require 'pry'
require 'csv'
require_relative 'employee'
require_relative 'employee_reader'
require_relative 'sale'
require_relative 'quota_sales_person'
require_relative 'owner'
require_relative 'commission_sales_person'

employee_info_file = 'employee_info.csv'

employees = EmployeeReader.new(employee_info_file)

binding.pry
