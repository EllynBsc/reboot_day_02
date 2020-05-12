

# SECOND STEP OF THE EXERCISE:
# input: christmas_list hash

# user_action add : create/add a key/value pair in a hash
# user_action listing : each in a hash
# user_action delete: delete a key/value pair in a hash
# user_action mark: update a key/value pair in a hash


# christmas_list = {
#   "surfboard" => true,
#   "mojito" => false,
# }

# puts "welcome to your christmas list buddy!"
# user_action = nil # variable initailization

# while user_action != "quit"
#   puts "Choose what you want to do: type list/add/delete/mark or quit"
#   user_action = gets.chomp.downcase


#   if user_action == "list"
#     christmas_list.each do |gift, status|
#       puts "#{gift} - #{status}"
#     end
#     puts `clear`
#   elsif user_action == "add"
#      # 3 steps:
#      puts ">"
#      puts "what do you want to add ?"
#      # 1. asking the user what he wants to add
#      # 2.store the gift he chose
#      user_gift_to_add = gets.chomp.downcase
#      if christmas_list.key?(user_gift_to_add)
#         puts "this item is already in your christmas list"
#     else
#      # 3. add this gift to your hash
#      christmas_list[user_gift_to_add] = false
#     end
#     puts `clear`
#   elsif user_action == "delete"
#     puts ">"
#     puts "what gift would you like to remove from the list?" #asking the user

#     user_gift_to_delete = gets.chomp #storing the gift the user wants tot delete
#     if christmas_list.key?(user_gift_to_delete)
#      christmas_list.delete(user_gift_to_delete) #deleting it from the hash
#     else
#      puts "this item does not exist"
#     end
#     puts `clear`
#   elsif user_action == "mark" #UPDATE
#      puts "what do you want to update?"
#      user_gift_to_update = gets.chomp
#     if christmas_list.key?(user_gift_to_update)
#       christmas_list[user_gift_to_update] = true
#     else
#       puts "this item does not exist"
#     end
#      puts `clear` # backticks to clean your ruby program
#   else
#     puts "type an action that exists: list, add, delete, mark or quit" if user_action != "quit"
#   end
# end

# puts "Goodbye thank you!"
