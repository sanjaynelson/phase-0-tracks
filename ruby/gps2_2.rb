# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  #Create blank hash entitled grocery_list
  #single variable for parameter in method
  #Use .split, place items into array
  #Use .each method to place hash, set value to 1 for each item
  #yield?
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(list, string_of_items)
  list = {}
  item_array = string_of_items.split(" ")
  item_array.each do |item|
    item_key = item.to_sym
    list[item_key] = 1
  end
  return list
end


#The new_create_list method allows you to add items with quantities at the same time
# def new_create_list(list, string_of_items, quantity_as_string)
#   list = {}
#   item_array = string_of_items.split(" ")
#   quantity_array = quantity_as_string.split(" ")
#   item_list_counter = 0
#   item_array.each do |item|
#     item_key = item.to_sym
#     list[item_key] = quantity_array[item_list_counter]
#     item_list_counter += 1
#   end
#   return list
# end

food = {}
# food = create_list(food, "lemonade tomatoes onions ice_cream", "2 3 1 4")
# p food
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # 3 variables for method - (list, item_name, quantity=0)
  # list[item_name] = quantity
# output: updated hash
def add_item(list, item_name_string, quantity=1)
  item_key = item_name_string.to_sym
  list[item_key] = quantity
  return list
end

# food = add_item(food, "grapes")
# p food

# Method to remove an item from the list
# input: use (list, item_name) for input
# steps: use list[item_name] with .delete method to remove value and key
# output: updated hash
def remove_item(list, key_name)
  list.delete(key_name)
  return list
end

# food = remove_item(food, :apple)
# p food

# Method to update the quantity of an item
# input: 3 parameters for method - (list, item_name, new_quantity)
# steps: Add new_quantity to item_name, using: list[item_name] = new quantity
# output: updated value in hash
def update_quantity(list, key_name, quantity=1)
  list[key_name] = quantity
  return list
end

# food = update_quantity(food, :apple, 5)
# p food

# Method to print a list and make it look pretty
# input: hash
# steps: p hash (use .each method)
# output: puts "You have #{value} many #{key}"
def print_list(list)
  list.each do |key, value|
    puts "You have #{value} many #{key}!!! :D"
  end
end

# print_list(food)


food = {}
food = create_list(food, "pizza awesome_sauce wings")

food = add_item(food, "lemonade", 2)
food = add_item(food, "tomatoes", 3)
food = add_item(food, "onions", 1)
food = add_item(food, "ice_cream", 4)

food = update_quantity(food, :ice_cream, 1)

print_list(food)