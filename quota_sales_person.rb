class QuotaSalesPerson < Employee

  def initialize(first_name, last_name, salary, bonus, quota)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @bonus = bonus
    @quota = quota
    @total_sales = 0
    @monthly_salary = monthly_salary
  end
end
