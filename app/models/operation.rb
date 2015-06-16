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
      company = Company.find_by_name(row["company"])
      if company
        Operation.create(:company_id => company.id, :invoice_num => row['invoice_num'], :invoice_date => row['invoice_date'], :operation_date => row['operation_date'], :amount => row['amount'], :reporter => row['reporter'], :notes => row['notes'], :status => row['status'], :kind => row['kind'] )
      end
    end
  end

end