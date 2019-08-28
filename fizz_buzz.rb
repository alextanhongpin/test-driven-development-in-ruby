# require_relative 'fizz_buzz_engine'
require_relative 'fixnum_extensions'

class VirtualClock
	attr_accessor :hour

	def morning?
		hour <= 12
	end
end

class FizzBuzz
	using FixnumExtensions

	def initialize(output = $stdout, clock)
		@output = output
		@clock = clock
	end

	def numbers
		(1..100).to_a
	end

	def sequence
		numbers.collect do |n|
			n.fizz_buzz
			# fbe = FizzBuzzEngine.new(n)
			# fbe.value
		end
	end

	def transform(n)
		result = sequence[n-1]
		if @clock && @clock.morning?
			result = "#{result} Morning"
		end
		result
	end

	def output(n)
		result = transform(n)
		@output.write result
	end

	private

	def multiple_of(x, n)
		x.modulo(n).zero?
	end
end
