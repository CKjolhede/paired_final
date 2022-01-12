class Employee
  attr_reader :name, :age, :salary

  def initialize(employee)
    @name = employee[:name]
    @age = employee[:age].to_i
    @salary = employee[:salary].to_i
  end
end
