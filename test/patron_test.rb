require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require 'pry'


class PatronTest < MiniTest::Test
	def test_that_it_exist
		patron = Patron.new("bob")
		# binding.pry
		assert_equal "bob", patron.name
	end
end
