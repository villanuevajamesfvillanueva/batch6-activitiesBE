#item 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|e| puts "array value = #{e}"}

#item 2
h = {a:1, b:2, c:3, d:4}
puts "\nvalue of  key:b is #{h[:b]}"
h[:e] = 5
puts h

#item 3
contact_data = [["ana@email.com", "123 Main st.", "555-123-4567"],
                ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Analyn Cajocson" => {}, "Avion School" => {}}

def assign (arr_arg)
    tmp_hash = {}
    tmp_hash[:email] = arr_arg[0]
    tmp_hash[:address] = arr_arg[1]
    tmp_hash[:phone] = arr_arg[2]
    return tmp_hash
end

puts "\n"
contacts["Analyn Cajocson"] = assign(contact_data[0])
contacts["Avion School"] = assign(contact_data[1])
puts contacts



