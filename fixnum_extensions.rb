module FixnumExtensions
	refine Fixnum do
		def fizz_buzz
			return 'FizzBuzz' if multiple_of(15)
			return 'Fizz' if multiple_of(3)
			return 'Buzz' if multiple_of(5)
			self
		end

		def multiple_of(n)
			self.modulo(n).zero?
		end
	end
end
