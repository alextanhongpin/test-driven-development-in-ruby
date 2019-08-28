require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test
	def test_addition
		calculator = Calculator.new
		result = calculator.add(3, 2)
		assert_equal 5, result
	end

	def test_subtraction
		calculator = Calculator.new
		result = calculator.subtract(3, 2)
		assert_equal 1, result
	end
end
