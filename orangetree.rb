class OrangeTree

	attr_accessor :height, :age, :orange

	def initialize
		@height = 0
		@age = 0
		@orange = 0
	end

	def one_year_passes
			self.age += 1
			self.orange += 20 + self.age

			if self.age > 50
				self.height = 0
			else
			self.height += 1
			end
	end

	def count_the_orange
		return self.orange
	end

	def pick_an_orange
		self.orange -= 1 if self.orange > 0
	end

end

class OrangeTreeOrchard
		attr_accessor :orangeTrees


	def initialize
	 @orangeTrees = []
	end

	def createATree
		@orangeTrees << OrangeTree.new
	end

end

orangeTrees = OrangeTreeOrchard.new
orangeTrees.createATree

orangeTrees.orangeTrees.each do |value|
	puts value.height
end