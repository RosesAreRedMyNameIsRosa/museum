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
		bob.add_interest("Imax")
		assert_equal ["Dead Sea Scrolls", "Gems and Minerals","Imax"], bob.interests
		# binding.pry
	end

	def test_that_we_can_add_a_new_patron
		sally = Patron.new("Sally")
		sally.add_interest("Dead Sea Scrolls")
		assert_equal "Sally", sally.name
		assert_equal ["Dead Sea Scrolls"], sally.interests
	end
end
