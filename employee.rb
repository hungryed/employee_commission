class Employee
  # :gross_salary, :net_pay

  def initialize(first_name, last_name, salary)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @monthly_salary = monthly_salary
  end

  def tax_payment
    @salary * 0.7
  end

  def monthly_salary
    @salary / 12
  end

  # def display(&block)
  #   puts name
  #   gross_salary
  #   yield if block_given?
  #   net pay
  # end

end
