####The task is to create an Inventory program that:
#1. Lists several items
#2. Allows a user to select an item and view the inventory count
#...change the number of the inventory
#...delete the item altogether
#...change the name of an item
#3. Create a new item and have this item now show up in the list of items you can select
#4. Loops through until the user does not want to edit the list anymore

#Define class

#Initialize class

#Define methods
#...View the inventory
def viewInventory(hash)
	hash.each do |key, value|
		puts "#{key}, #{value}"
	end
end 
#...Update inventory item number
def updateItemNo(hash, item, new_number)
	hash[item.to_sym] = new_number
	puts viewInventory(hash)
end
#...Add Inventory Item
def addItem(hash, item_name, item_number)
	if hash.include?(item_name.to_sym)
		puts "This item already exists. Would you like to update the current inventory? Y or N"
		response = gets.chomp
		if response.upcase == "Y"
			updateItemNo(hash, item_name, item_number)
		else
			return
		end
	end
	hash[item_name.to_sym] = item_number
	puts viewInventory(hash)
end 
#...Delete inventory item
def deleteItem(hash, item)
	hash.delete(item.to_sym)
end
#...Update inventory item name
def updateItemName(hash, item, new_name)
	hash[new_name.to_sym] = hash.delete(item.to_sym)
end
#...Select and view and item
#def viewItem(hash, item)
#end
#End class definition

#Define variables
continue = "yes"
inventory = {
	brownies: 24,
	cookies: 100
}
#taskChoice = 0
validOptions = [1,2,3,4,5]

#User greeting
puts "Hi, welcome to the Inventory App"

until continue == "no" do #Start Loop

	#User prompt
	puts "What would you like to do?"
	puts "1. View the Inventory\n2. Add an inventory item\n3. Delete an inventory item\n4. Update an inventory amount\n5.Update an inventory name\n"

	taskChoice = gets.chomp.to_i

	while (!validOptions.include?(taskChoice))
		print "That is not a valid choice. Please enter a number between 1 and 5: "
		taskChoice = gets.chomp.to_i
	end

	#puts inventory
	puts viewInventory(inventory)

	#If/#lse conditions
	if (taskChoice == 1)
		puts viewInventory(inventory)
	elsif (taskChoice == 2)
		puts "Please enter the name of the inventory item you would like to add"
		item_name = gets.chomp
		puts "Please enter the amount of #{item_name} currently in stock"
		item_number = gets.chomp.to_i
		addItem(inventory, item_name, item_number)
	elsif (taskChoice == 3)
		puts "Please enter the name of the inventory item you would like to delete"
		item_name = gets.chomp
		deleteItem(inventory, item_name)
	elsif (taskChoice == 4)
		puts "Please enter the name of the inventory item you would like to update"
		item_name = gets.chomp
		puts "Please enter the new inventory amount"
		item_number = gets.chomp.to_i
		updateItemNo(inventory, item_name, item_number)
	else
		puts "Please enter the name of the inventory item you would like to change"
		item_name = gets.chomp
		puts "Please enter the new name you would like to give"
		new_name = gets.chomp
		updateItemName(inventory, item_name, new_name)
	end

	puts "Would you like to complete another task? Yes or no?"

	continue = gets.chomp.downcase

end #End loop