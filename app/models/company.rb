class Company < ActiveRecord::Base
  has_many :operations

  validates_presence_of :name


  def total_amount
    operations.to_a.sum { |operation| operation.amount }
  end

  def accepted_operations 
    Operation.group(:status).count['accepted']
  end

end
