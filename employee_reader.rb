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
        base_salary: row[:base_salary],
        commission: row[:commission],
        bonus: row[:bonus],
        quota: row[:quota]
      }
      @employees << employee
    end
  end

  def make_employee

  end

end
