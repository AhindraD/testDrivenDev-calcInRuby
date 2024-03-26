require "functions_framework"

FunctionsFramework.http "app" do |request|
 a = request.params["num1"].to_i
 b = request.params["num2"].to_i
 calculator = Calculator.new
 add = calculator.add(num1, num2)
 subtract = calculator.subtract(num1, num2)
 multiply = calculator.multiply(num1, num2)
 divide = calculator.divide(num1, num2)
 "Add: #{add}, Subtract: #{subtract}, Multiply: #{multiply}, Divide: #{divide}"
end


class Calculator
  def add(num1, num2)
    num1 + num2
  end
  def subtract(num1, num2)
    num1 - num2
  end
  def multiply(num1, num2)
    num1 * num2
  end
  def divide(num1, num2)
    num1 / num2
  end
end



# calculator = Calculator.new
# puts calculator.add(1, 2) # 3
# puts calculator.subtract(1, 2) # -1
# puts calculator.multiply(1, 2) # 2