require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require 'pry'


class PatronTest < MiniTest::Test
	def test_that_it_exist
		bob = Patron.new("bob")
		# binding.pry
		assert_equal "bob", bob.name
	end
end
