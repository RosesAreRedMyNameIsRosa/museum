require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require 'pry'

class MuseumTest < MiniTest::Test
	def test_that_it_exisits
		dmns = Museum.new("Denver Museum of Nature and Science")
		assert_equal "Denver Museum of Nature and Science", dmns.name
		binding.pry
	end

end
