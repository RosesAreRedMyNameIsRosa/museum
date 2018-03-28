require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require './test/patron_test'
require 'pry'

class MuseumTest < MiniTest::Test
	def test_that_it_exisits
		dmns = Museum.new("Denver Museum of Nature and Science")
		assert_equal "Denver Museum of Nature and Science", dmns.name
	end

	def test_it_can_have_exhibits
				dmns = Museum.new("Denver Museum of Nature and Science")
				dmns.add_exhibit("Dead Sea Scrolls", 10)
				dmns.add_exhibit("Gems and Minerals", 0)
				assert_equal ["Dead Sea Scrolls",10, "Gems and Minerals", 0], dmns.exhibits

	end

	def test_how_much_revenue_dmns_has
		dmns = Museum.new("Denver Museum of Nature and Science")
		dmns.revenue
		assert_equal 0, dmns.revenue
	end

	def test_that_dmns_can_admit_patrons
		dmns = Museum.new("Denver Museum of Nature and Science")
		dmns.revenue
		dmns.admit(bob)
		dmns.admit(sally)
		dmns.revenue
		assert_equal 40, dmns.revenue

	end
end
