class Fizz
	def value(n)
		if n % 3 == 0
			'Fizz'
		end
	end
end

class Buzz 
	def value(n)
		if n % 5 == 0
			'Buzz'
		end
	end
end

class FizzBuzz
	def value(n)
		if n % 15 == 0
			'FizzBuzz'
		end
	end
end

class NoFizzBuzz
	def value(n)
		n
	end
end

class FizzBuzzGenerator
	def initialize(objects, list)
		@objects = objects
		@list = list
	end

	def generate
		result = []
		@list.each do |num|
			@objects.each do |l|
				v = l.value(num)
				unless v.nil? 
					result << v
					break
				end
			end
		end
		result
	end
end
