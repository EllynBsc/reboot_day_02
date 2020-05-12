

# INPUT: a hash
# christmas_list = {
#   "surfboard" => false,
#   "mojito" => false,
# }
# OUTPUT: a hash
# CRUD OUR HASH CHRISTMAS_LIST
# my program should be a loop


# PSEUDO-CODING
# 1. Welcome the user
# 2. Display menu (list / add / delete / mark / quit)
# 3. Get/store the user action
# 4. We want to do something in the program depending on what the user is saying
#     if my user is telling he wants to list
#       i need to list the christmas_list to him
#       puts "todo: list"
#     elsif my user is telling me he wants to add something
#        i should ask him what he wants to add to his christmas_list
#        add it to the christmas list
#     elsif my user is telling me he wants to delete
#      puts "todo: delete"
#     elsif my user is telling me he wants to mark
#      puts "todo: mark"
#     else
#       puts " type an action that exists"
#     end
# 5.loop: conditional loop with while or until
#   while the user does not say quit
#     loop and present the christmas gift game where he can perform the CRUD on his christmas list
#   end

# FIRST STEP OF OUR EXERCISE:

christmas_list = {
  "surfboard" => true,
  "mojito" => false,
}

puts "welcome to your christmas list buddy!"
user_action = nil # variable initailization

while user_action != "quit"
  puts "Choose what you want to do: type list/add/delete/mark or quit"
  user_action = gets.chomp.downcase

  if user_action == "list"
    puts "to do: list"
  elsif user_action == "add"
    puts "to do: add"
  elsif user_action == "delete"
   puts "to do: add"
  elsif user_action == "mark"
    puts "to do: mark"
  else
    puts "type an action that exists: list, add, delete, mark or quit" if user_action != "quit"
  end
end

puts "Goodbye thank you!"
