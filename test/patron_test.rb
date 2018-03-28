require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require 'pry'


class PatronTest < MiniTest::Test
	def test_that_it_exist
		bob = Patron.new("Bob")
		# binding.pry
		assert_equal "Bob", bob.name
	end

	def test_that_we_can_add_interests
		bob = Patron.new("Bob")
		bob.add_interest("Dead Sea Scrolls")
		bob.add_interest("Gems and Minerals")
		assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], bob.interests
		# binding.pry
	end
end
