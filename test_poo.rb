require "pry"

class User
	attr_accessor :firstname, :lastname
	@@all = []

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
    puts "Creating #{self.firstname}"
    @@all.push(self) #La méthode push l'instance de l'objet dans le tableau @@all.
  end

  def full_name
    return "#{@firstname.capitalize} #{@lastname.capitalize}"
  end

  def self.all
  	return @@all
  end

end

harry = User.new("Harry", "Potter")

ron = User.new("Ron", "Weasley")

draco = User.new("Draco", "Malfoy")

puts User.all #On affiche le tableau @@all.