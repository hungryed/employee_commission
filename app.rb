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
employees2 = employees.make_employee
sales = SaleReader.new(sales_info)

binding.pry
