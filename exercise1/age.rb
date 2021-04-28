#item 4

print "How old are you? "
x = gets.chomp

years = [10, 20, 30, 40]
years.each {|yr| puts "In #{yr} years, you will be #{yr + x.to_i}"}