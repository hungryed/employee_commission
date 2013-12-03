class QuotaSalesPerson < Employee
  attr_accessor :bonus, :quota

  def initialize(first_name, last_name, salary,commission_rate, bonus, quota)
    super(first_name, last_name, salary, commission_rate)
    @bonus = bonus
    @quota = quota
  end

  def met_quota?
    add_bonus if @amount_sold >= @quota
  end

  def add_bonus
    @net_pay += @bonus
  end

  # def display
  #   super do
  #     puts "no you're a towel"
  #   end
  # end
end
