require 'minitest/autorun'
require_relative 'fizzbuzz'

class TestFizzBuzzGenerator < MiniTest::Test
	def test_fizz_buzz_generator
		objects = [FizzBuzz.new, Fizz.new, Buzz.new, NoFizzBuzz.new]
		g = FizzBuzzGenerator.new(objects, (1..20).to_a)
		result = g.generate
		expected = [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz', 16, 17, 'Fizz', 19, 'Buzz']
		assert_equal expected, result
	end
end
