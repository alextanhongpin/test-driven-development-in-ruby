require 'minitest/autorun'

class StandardConsole
	def initialize(input=$stdin, output=$stdout)
		@input = input
		@output = output
	end

	def prompt
		@output.puts "Please enter a number from 1 to 100\n"
		read.to_i
	end

	def write(message)
		@output.print message
	end

	def read
		@input.gets.chomp
	end
end

class TestStandardConsole < MiniTest::Test
	def test_prompt_user_for_number
		output = StringIO.new
		input = StringIO.new
		console = StandardConsole.new input, output
		console.write('testing')
		assert_equal 'testing', output.string
	end
end
