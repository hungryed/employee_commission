class CommissionSalesPerson < Employee

  def initialize(first_name, last_name, salary, commission_rate)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @commission_rate = commission_rate
    @amount_sold = 0
    @monthly_salary = monthly_salary
  end
end
