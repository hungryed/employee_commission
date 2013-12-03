class Employee
  attr_reader :first_name, :last_name, :salary, :monthly_salary
  attr_accessor :amount_sold , :total_commission#,:gross_salary, :net_pay

  def initialize(first_name, last_name, salary, commission_rate)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @monthly_salary = monthly_salary
    @commission_rate = commission_rate
    @amount_sold = 0
  end

  def tax_payment
    @salary * 0.7
  end

  def monthly_salary
    @salary / 12
  end

  def commission_calculator
    @total_commission = @amount_sold * @commission_rate
  end

  # def display(&block)
  #   puts name
  #   gross_salary
  #   yield if block_given?
  #   net pay
  # end

end
