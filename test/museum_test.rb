require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require 'pry'

class MuseumTest < MiniTest::Test
	def test_that_it_exisits
		dmns = Museum.new("Denver Museum of Nature and Science")
		assert_equal "Denver Museum of Nature and Science", dmns.name
		# binding.pry
	end

	def test_it_can_have_exhibits
				dmns = Museum.new("Denver Museum of Nature and Science")
				dmns.add_exhibit("Dead Sea Scrolls", 10)
				dmns.add_exhibit("Gems and Minerals", 0)
				assert_equal ["Dead Sea Scrolls",10, "Gems and Minerals", 0], dmns.exhibits

	end

end
