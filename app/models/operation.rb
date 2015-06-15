class Operation < ActiveRecord::Base
  
  belongs_to              :company
  has_and_belongs_to_many :categories

  validates_presence_of :invoice_num, :invoice_date, :amount, :operation_date, :kind, :status
  validates_numericality_of :amount, greater_than: 0
  validates_uniqueness_of :invoice_num

  def self.to_csv
    CSV.generate do |csv|
      csv << ["company", "invoice_num", "invoice_date", "operation_date", "amount", "reporter", "notes", "status", "kind"]
        all.each do |operation|
          csv << [operation.company.name, operation.invoice_num, operation.invoice_date, operation.operation_date, operation.amount, operation.reporter, operation.notes, operation.status, operation.kind, operation.categories.collect { |o| o.name }.join(',') ]
        end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Operation.create! row.to_hash
    end
  end

#  def self.import(file)
#    CSV.foreach(file.path, headers: true) do |row|
#      operation = where(name: row["name"]).first_or_create!(row.to_hash.slice(*accessible_attributes))
#      company = Company.find_by_name(row["company"])
#      operation.company = company      
#      operation.save!
#    end
#  end  

end
