

# FIFTH VERSION: DYNAMIC SCRAPING + parsing and storing



require 'nokogiri'
require 'open-uri'
require 'csv'

christmas_list = {
  "surfboard" => true,
  "mojito" => false,
}



# PARSING: GOING FROM TEXT FORMAT TO RUBY OBJECT
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'gifts.csv'

CSV.foreach(filepath, csv_options) do |row|
   if row[1] == "true"
    row[1] = true
   else
    row[1] = false
   end

  christmas_list[row[0]] = row[1]   # TODO: build new gift from information stored in each row
end





puts "welcome to your christmas list buddy!"
user_action = nil # variable initailization

while user_action != "quit"
  puts "Choose what you want to do: type list/add/delete/mark/inspiration or quit"
  user_action = gets.chomp.downcase


  if user_action == "list"
    array_of_keys = christmas_list.keys

    array_of_keys.each_with_index do |gift, index|
      status = christmas_list[gift]
      puts "#{index + 1}-#{gift} - #{status ? "[X]" :"[]"}"
    end

  elsif user_action == "add"
     puts ""
     puts "what do you want to add ?"

     user_gift_to_add = gets.chomp.downcase
     if christmas_list.key?(user_gift_to_add)
      puts "this item is already in your christmas list"
    else
      christmas_list[user_gift_to_add] = false
    end
    puts `clear`
  elsif user_action == "delete"
    puts ">"
    puts "what gift would you like to remove from the list?(give me an index)"

    index_gift_to_delete = gets.chomp.to_i  - 1

    user_gift_to_delete = christmas_list.keys[index_gift_to_delete]

    if christmas_list.key?(user_gift_to_delete)
     christmas_list.delete(user_gift_to_delete)
    else
     puts "this item does not exist"
    end

  elsif user_action == "mark"
     puts "what do you want to update? (give me an index)"
     index_gift_to_update = gets.chomp.to_i - 1
     user_gift_to_update = christmas_list.keys[index_gift_to_update]
    if christmas_list.key?(user_gift_to_update)
      christmas_list[user_gift_to_update] = true
    else
      puts "this item does not exist"
    end
     puts `clear`
  elsif user_action == "inspiration"
    puts "what do you want to look for (inspiration)?"
    article = gets.chomp

    html_content = open("https://www.etsy.com/search?q=#{article}").read

    doc_nokogiri_element = Nokogiri::HTML(html_content)

    final_array_scraping = []
    doc_nokogiri_element.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|

       final_array_scraping << element.text.strip
    end
    final_array_scraping.first(10).each_with_index do |item, index|
     puts "#{index + 1} - #{item}"
    end

    puts "which one do you want to add to your christmas list?"
    index_item_scraping = gets.chomp.to_i - 1
    item_to_add = final_array_scraping[index_item_scraping]
    christmas_list[item_to_add] = false

  else
    puts "type an action that exists: list, add, delete, mark or quit" if user_action != "quit"
  end
end

puts "Goodbye thank you!"


# STORING : RUBY OBJECT => TEXT FORMAT

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['name', 'bought'] #headers of CSV

  christmas_list.each do |item, status|
   csv << [item, status]
  end

end


# PARSING: extracting the text format from the csv and getting back ruby objects
# happening at the beginning of the program(load the program)

# STORING : ruby object => text format
# happening at the end of the program(quit)









