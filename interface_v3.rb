#THIRD STEP: display our hash with index in front and we want to be able to chose bny index for marking something and deleteing something.

# each over a hash, we want to add the index in front
# each_with_index => array of keys
# .keys or .values gives an array of keys or an array of values

# we want to be able to display the values of the status in a certain way:
# [] => false
# [X] => true

#I want to be able to chose by index when i delete or when i update


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
#     array_of_keys = christmas_list.keys

#     array_of_keys.each_with_index do |gift, index|
#       status = christmas_list[gift]
#       # if status
#       #   status = "[X]"
#       # else
#       #   status = "[]"
#       # end
#       # condition ? true : false
#       # status ? "[X]" :"[]"
#       puts "#{index + 1}-#{gift} - #{status ? "[X]" :"[]"}"
#     end

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
#     puts "what gift would you like to remove from the list?(give me an index)" #asking the user

#     index_gift_to_delete = gets.chomp.to_i  - 1  #storing the gift the user wants tot delete
#     # puts " index to delete: #{index_gift_to_delete}"

#     user_gift_to_delete = christmas_list.keys[index_gift_to_delete]
#     # puts "user gift:#{user_gift_to_delete}"

#     if christmas_list.key?(user_gift_to_delete)
#      christmas_list.delete(user_gift_to_delete) #deleting it from the hash
#     else
#      puts "this item does not exist"
#     end

#   elsif user_action == "mark" #UPDATE
#      puts "what do you want to update? (give me an index)"
#      index_gift_to_update = gets.chomp.to_i - 1
#      user_gift_to_update = christmas_list.keys[index_gift_to_update]
#     if christmas_list.key?(user_gift_to_update)
#       christmas_list[user_gift_to_update] = true
#     else
#       puts "this item does not exist"
#     end
#      puts `clear` # backticks to clean your ruby program
#   elsif user_action == "idea"
#     # scraping_logic
#   else
#     puts "type an action that exists: list, add, delete, mark or quit" if user_action != "quit"
#   end
# end

# puts "Goodbye thank you!"


