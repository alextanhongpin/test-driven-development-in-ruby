require 'minitest/autorun'

# Implementation-aware test.

class Grass
	attr_reader :color
	
	def initialize
		@color = 'green'
	end

	# The client does not need to be aware whether the color is a
	# string, Struct, or RGB value.
	def green?
		@color == 'green'
	end
end

describe Grass do
	it 'is green' do
		grass = Grass.new
		# result = grass.color
		# assert_equal 'green', result
		
		result = grass.green?
		assert result
	end
end
