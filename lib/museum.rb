class Museum
	attr_reader :name,
						:exhibits,
						:cost,
						:revenue
	def initialize(name, exhibits = [], cost = [])
		@name = name
		@exhibits = exhibits
		@cost = cost
		@revenue = 0
	end
	def  add_exhibit(new_exhibits, cost)
		@exhibits << new_exhibits
		@exhibits << cost
	end
end
