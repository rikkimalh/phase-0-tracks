# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # pass items as string into method
  # split string at spaces
  # store items in a hash where key is item and value is quantity
  # set default quantity at 0
  # print the list to the console [can you use one of your other methods here?]
  	# method: print.each to go through and print every item. 
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Using the list to identify the hash, the item name as key value and optional quantity
# as the value, we can add the item to the hash. 
# output: Updated list

# Method to remove an item from the list
# input: List, item name
# steps: Using the list to identify the hash and the item name as key value 
# we can delete an item from the hash. Optional qunatity assigned to item name
# will be removed from hash. 
# output: updated list

# Method to update the quantity of an item
# input: list, item name, quantity
# steps: Using the list to identify the hash and item name as the key value, we can
# update the quantity(value) of an item. 
# output: updated list with updated quantity

# Method to print a list and make it look pretty
# input: list
# steps: Incorporate proper context to display/print our shopping list. 
# output: list printed on console. 



def create_list(items)
	list = {}
	items = items.split(' ')
	quantity = 0
	list = Hash.new

	items.each do |item| 
		list[item] = quantity
		end
	list
end

#list1 = create_list("apples oranges bananas")

def add_item(list1, item, quantity)
	list1.store(item, quantity)
end

#add_item(list1, "pear", 0)
#p list1

def del_item(list1, item)
	list1.delete_if{|key, value| key == item}
end

#del_item(list1, "bananas")

#p list1

def update_quantity(list1, item, quantity)
	list1[item] = quantity
end

#update_quantity(list1, "apples", 3)
#p list1

def print_list(list1)
	puts "This is our Grocery list!"
	list1.each do |key, value|
		puts "#{value} of #{key}"
	end
end


#print_list(list1)

list2 = create_list(" ")

add_item(list2, "lemonade", 2)
add_item(list2, "tomatoes", 3)
add_item(list2, "onions", 1)
add_item(list2, "ice-cream", 4)
del_item(list2, "lemonade")
update_quantity(list2, "ice-cream", 1)#

print_list(list2)


#Release 4 Reflect
# I learned to add a bit more literal detail when it comes to pseudocode. It's always tough to
# translate the code to plain english, but this exercise definitely helped Ashish in practicing towards that.

# We were initially going to work with arrays as it seemed the simplest, but after some discussion the hash
# was clearly the way to go. With the array, we could only add the grocery item and no assignment of how many
# of that grocery item we required. The hash gave us that opportunity to do so and add more organization to our stored data.

# The method returns our bunch of code for the particular job. In this case, the several different methods allowed us to 
# create a list, add an item, remove an item, update the quantity, and print the grocery list. 

# You can call whatever is set as your parameter in your method. Or rather, once your parameters are set, you can 
# assign them a value. You can even assign the value in your parameter as well!

# Once you have set method A, call it and assign it to a string  outside of the method. Then, you can use that string 
# in method B. 

# For me, solidifying the method concepts combined with the block parameters in this GPS was great. It helped
# to have someone to talk back and forth on concepts with as well as typing out the methods for my own self learning. 




# 