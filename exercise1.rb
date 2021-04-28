#item 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|e| puts "array value = #{e}"}

#item 2
h = {a:1, b:2, c:3, d:4}
puts "\nvalue of  key:b is #{h[:b]}"
h[:e] = 5
puts h