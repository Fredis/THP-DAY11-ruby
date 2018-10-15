class Person
  attr_accessor :name
  attr_reader :age
  @@people = []

  def initialize(initial_name, initial_age)
    @name = initial_name
    @age = initial_age
    @@people.push(self)
  end

  def say_name
    puts "Hi, my name is " + @name + "."
  end

  def say_age
    puts "I am #{@age} years old."
  end

  def self.get_people
    return @@people
  end
end

class LoudPerson < Person

	def say_name
		puts "HEY YOU, MY NAME IS #{@name.upcase}!"
	end

end

class QuietPerson < Person

	def say_name
		puts "HI, MY NAME IS #{@name}...".downcase
	end

end

class VeryLoudPerson < LoudPerson

	def say_age
		puts "MY AGE IS #{@age}!!!!!"
	end

end

class TwoHeadedPerson < Person

	def initialize(name, age, second_name)
		@second_name = second_name
	end

end

andy = Person.new("Andy", 25)
james = Person.new("James", 31)
mark = Person.new("Mark", 45)
jean = Person.new("Jean", 52)
philippe = LoudPerson.new("Philippe", 21)
jill = QuietPerson.new("Jill", 18)
cyprien = VeryLoudPerson.new("Cyprien", 22)

puts philippe.say_name
puts jill.say_name
puts cyprien.say_name
puts cyprien.say_age