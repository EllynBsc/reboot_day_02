


# FOURTH STEP: SCRAPING (with the file results.html : jeans)
# 1. add an other action inside of our menu : idea/inspiration
# 2. curl "https://www.etsy.com/search?q=THE_ARTICLE_YOUR_ARE_LOOKING_FOR" > results.html (type in your terminal)
# 3. play and look the classes that allow us to get access to the information/data we would like to steal/get.
# require 'nokogiri'
  # filepath = "/path/to/the/HTML/file.html"
  # # 1. We get the HTML page content
  # html_content = File.open(filepath)
  # # 2. We build a Nokogiri document from this file
  # doc = Nokogiri::HTML(html_content)
  # # 3. We search for the correct elements containing the items' title in our HTML doc
  # doc.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
  #   # 4. For each item found, we extract its title and print it
  #   puts element.text.strip
  # end
#4. ask the user which element from your scraping he wants to add to his christmas list
    #constraints:
      # 4.1. the user needs to chose by index (you know that you will need to a scraping_results_array on which you iterate with each with index)
      # 4.2. store the user_input_index
      # 4.3. Get back the product he wants to add from the index
      # 4.4. Finally, we can add this element to our christmas_list :)



# require 'nokogiri'

# christmas_list = {
#   "surfboard" => true,
#   "mojito" => false,
# }

# puts "welcome to your christmas list buddy!"
# user_action = nil # variable initailization

# while user_action != "quit"
#   puts "Choose what you want to do: type list/add/delete/mark/inspiration or quit"
#   user_action = gets.chomp.downcase


#   if user_action == "list"
#     array_of_keys = christmas_list.keys

#     array_of_keys.each_with_index do |gift, index|
#       status = christmas_list[gift]
#       puts "#{index + 1}-#{gift} - #{status ? "[X]" :"[]"}"
#     end

#   elsif user_action == "add"
#      puts ""
#      puts "what do you want to add ?"

#      user_gift_to_add = gets.chomp.downcase
#      if christmas_list.key?(user_gift_to_add)
#       puts "this item is already in your christmas list"
#     else
#       christmas_list[user_gift_to_add] = false
#     end
#     puts `clear`
#   elsif user_action == "delete"
#     puts ">"
#     puts "what gift would you like to remove from the list?(give me an index)"

#     index_gift_to_delete = gets.chomp.to_i  - 1

#     user_gift_to_delete = christmas_list.keys[index_gift_to_delete]

#     if christmas_list.key?(user_gift_to_delete)
#      christmas_list.delete(user_gift_to_delete)
#     else
#      puts "this item does not exist"
#     end

#   elsif user_action == "mark"
#      puts "what do you want to update? (give me an index)"
#      index_gift_to_update = gets.chomp.to_i - 1
#      user_gift_to_update = christmas_list.keys[index_gift_to_update]
#     if christmas_list.key?(user_gift_to_update)
#       christmas_list[user_gift_to_update] = true
#     else
#       puts "this item does not exist"
#     end
#      puts `clear`
#   elsif user_action == "inspiration"
#     # scraping_logic
#     filepath = "results.html"
#     # 1. We get the HTML page content
#     html_content = File.open(filepath)
#     # 2. We build a Nokogiri document from this file
#     doc_nokogiri_element = Nokogiri::HTML(html_content)

#     # 3. We search for the correct elements containing the items' title in our HTML doc

#     # p doc_nokogiri_element.search('.v2-listing-card .v2-listing-card__info .text-body')
#     final_array_scraping = []
#     doc_nokogiri_element.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
#       # 4. For each item found, we extract its title and print it
#        final_array_scraping << element.text.strip
#     end
#     final_array_scraping.first(10).each_with_index do |item, index|
#      puts "#{index + 1} - #{item}"
#     end

#     puts "which one do you want to add to your christmas list?" # 4.1. the user needs to chose by index (you know that you will need to a scraping_results_array on which you iterate with each with index)
#     index_item_scraping = gets.chomp.to_i - 1 # 4.2. store the user_input_index
#     item_to_add = final_array_scraping[index_item_scraping] # 4.3. Get back the product he wants to add from the index
#     christmas_list[item_to_add] = false # 4.4. Finally, we can add this element to our christmas_list :)

#   else
#     puts "type an action that exists: list, add, delete, mark or quit" if user_action != "quit"
#   end
# end

# puts "Goodbye thank you!"
