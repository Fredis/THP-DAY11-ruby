class Person
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def to_s
		puts "#{@name} a #{@age} ans."
	end

end

class Superhero < Person

	attr_accessor :superpower

	def initialize(name, age, superpower)
		@name = name
		@age = age
		@superpower = superpower
	end
	def to_s
		puts "#{@name} a #{@age} ans. Son super pouvoir est #{superpower}."
	end

end

fred = Person.new("Fred", 32)
fred.to_s
philippe = Superhero.new("Philippe", 32, "Voler")
philippe.to_s