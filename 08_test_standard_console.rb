require 'minitest/autorun'
require_relative 'standard_console'

class TestStandardConsole < MiniTest::Test
	def test_print_message
		console = StandardConsole.new
		assert_output('hello') {console.write('hello')}
	end
end


