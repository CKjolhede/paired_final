require './lib/employee'
require './lib/department'
require 'pry'

RSpec.describe Department do
  before(:each) do
    @customer_service=Department.new("Customer Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "30000"})
  end

  it 'exists' do
    expect(@customer_service).to be_a(Department)
  end

  it 'has retrievable attributes' do
    expect(@customer_service.name).to eq("Customer Service")
    expect(@customer_service.employees).to eq([])
  end

  it 'can has a functional #expense method' do
    expect(@customer_service.expenses).to eq(0)
  end

  it 'can has a functional #expense method' do
    @customer_service.expense(100)
    @customer_service.expense(25)
    expect(@customer_service.expenses).to eq(125)
  end

end
