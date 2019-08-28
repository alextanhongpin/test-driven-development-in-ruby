require 'minitest/autorun'
require_relative 'user'

# Testing negative case.
describe User do
	it 'should be in any role assigned to it' do
		user = User.new
		user.assign_role('admin')
		assert user.in_role?('admin')
	end

	it 'should not be in a role that is not assigned to it' do
		user = User.new
		refute user.in_role?('admin')
	end
end

