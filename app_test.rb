require "minitest/autorun"
require "./app"

describe "Calculator" do
  it "should add two numbers" do
    calculator = Calculator.new
    assert_equal 5, calculator.add(2, 3)
  end
end