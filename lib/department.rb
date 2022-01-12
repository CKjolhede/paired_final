class Department
  attr_reader :name, :employees, :expenses

  def initialize(name, employees = [], expenses = 0)
    @name = name
    @employees = employees
    @expenses = expenses
  end

  def expense(amount)
    !@expenses = @expenses + amount
  end

end
