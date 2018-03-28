class Museum
	attr_reader :name,
						:exhibits,
						:cost
	def initialize(name, exhibits = [], cost = [])
		@name = name
		@exhibits = exhibits
		@cost = cost
	end
	def  add_exhibit(new_exhibits, cost)
		@exhibits << new_exhibits 
		@exhibits << cost
	end
end
