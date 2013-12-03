class EmployeeReader
  attr_accessor :employees

  def initialize(filename)
    @filename = filename
    @employees = []
    read_file
  end

  def read_file
    CSV.foreach(@filename, headers:true, header_converters: :symbol) do |row|
      employee = {
        title: row[:title],
        first_name: row[:first_name],
        last_name: row[:last_name],
        base_salary: row[:base_salary].to_i,
        commission: row[:commission].to_f,
        bonus: row[:bonus].to_i,
        quota: row[:quota].to_i
      }
      @employees << employee
    end
  end

  def make_employee
    @employees.map do |employee|
      job = employee[:title]
      first_name = employee[:first_name]
      last_name = employee[:last_name]
      salary = employee[:base_salary]
      if job == 'Commission'
        commission_rate = employee[:commission]
        CommissionSalesPerson.new(first_name,last_name,salary,commission_rate)
      elsif job == 'Quota'
        bonus = employee[:bonus]
        quota = employee[:quota]
        QuotaSalesPerson.new(first_name, last_name, salary, bonus, quota)
      elsif job == 'Owner'
        Owner.new(first_name,last_name,salary)
      else
        Employee.new(first_name,last_name,salary)
      end
    end
  end

end
