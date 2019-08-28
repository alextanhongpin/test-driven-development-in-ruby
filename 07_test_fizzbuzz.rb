require 'minitest/autorun'
require_relative 'fizz_buzz'


class TestFizzBuzz < Minitest::Test
	def test_generate_numbers_from_1_to_100
		fb = FizzBuzz.new nil, nil
		result = fb.numbers
		assert_equal (1..100).to_a, result
	end

	def test_generate_fizz_for_multiples_of_3
		fb = FizzBuzz.new nil, nil
		result = fb.transform(3)
		assert_equal 'Fizz', result
	end

	def test_generate_buzz_for_multiples_of_5
		fb = FizzBuzz.new nil, nil
		result = fb.transform(5)
		assert_equal 'Buzz', result
	end

	def test_generate_fizzbuzz_for_multiples_of_3_and_5
		fb = FizzBuzz.new nil, nil
		result = fb.transform(15)
		assert_equal 'FizzBuzz', result
	end

	def test_generate_number_if_not_multiple
		fb = FizzBuzz.new nil
		result = fb.transform(1)
		assert_equal 1, result
	end

	# def test_print_fizz_for_multiples_of_3
	#         fb = FizzBuzz.new
	#         assert_output('Fizz') { fb.output(3) }
	# end

	def test_write_fizz_for_multiples_of_3
		mock = Minitest::Mock.new
		mock.expect(:write, nil, ['Fizz'])

		fb = FizzBuzz.new(mock, nil)
		fb.output(3)

		mock.verify
	end

	def test_generate_fizz_morning_for_mornings
		clock = VirtualClock.new
		clock.hour = 10
		fb = FizzBuzz.new nil, clock
		result = fb.transform(3)
		assert_equal 'Fizz Morning', result
	end

	def test_generate_fizz_not_morning
		clock = VirtualClock.new
		clock.hour = 14
		fb = FizzBuzz.new nil, clock
		result = fb.transform(3)
		assert_equal 'Fizz', result
	end
end
