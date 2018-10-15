class ShoppingList

	attr_accessor :name, :items

	def initialize(name)
		@name = name
		@items = []
	end

	def set_name(name)
		@name = name
	end

	def add_new_item(item_name, item_quantity)
		hash_item = {:item_name_key => item_name, :item_quantity_key => item_quantity}
		@items << hash_item
	end

	def list_all_items
		@items.each do |item|
			item.each do |key, value|
				print value
			end
		end

	end

end

my_shopping_list = ShoppingList.new("Ma liste d'achat Noël 2018")
my_shopping_list.set_name("Noël 2018")
my_shopping_list.add_new_item("Red Dead Redemption", 2)
my_shopping_list.add_new_item("Console de Jeux Vidéo", 1)
my_shopping_list.list_all_items