require 'pry'
require 'csv'
require_relative 'employee'
require_relative 'employee_reader'
require_relative 'sale'
require_relative 'quota_sales_person'
require_relative 'owner'
require_relative 'commission_sales_person'
require_relative 'sales_reader'

employee_info_file = 'employee_info.csv'
sales_info = 'sales_last_month.csv'

employees = EmployeeReader.new(employee_info_file)
sales = SaleReader.new(sales_info)

sales.each do |sale|
  employee_name = employees.find {|employee| sale.name == employee.last_name}
  employee_name.amount_sold += sale.amount
end

binding.pry
