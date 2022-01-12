require './lib/employee'
require 'pry'

RSpec.describe Employee do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
  end

  it 'exists' do
    expect(@bobbi).to be_a(Employee)
  end

  it 'can retrieve key value information from hash' do
    expect(@bobbi.name).to eq("Bobbi Jaeger")
    expect(@bobbi.age).to eq(30)
    expect(@bobbi.salary).to eq(100000)
  end
end
