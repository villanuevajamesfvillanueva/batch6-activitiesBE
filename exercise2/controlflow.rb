#item 1
arr = [1, 3, 5, 7, 9, 11]
number = 3

puts (arr.include? 3)

#item 2
def classify(x)
    return "is between 0 and 50" if (0..50).include? x
    return "is between 51 and 100" if (51...50).include? x
    return "is above 100" if (x > 100)
end

# #input validation
while (true)
    print "Please enter an integer number: "
    num = gets.chomp
    break if (num.to_i.to_s == num && num.to_i >= 0)
end

puts "#{num} #{classify(num.to_i)}"

#item 3
while (true)
    print "Input: "
    input = gets.chomp
    break if input == "STOP"
    puts "performing an action..."
end

#item4
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

while (true)
    print "Please enter an integer number: "
    num = gets.chomp
    break if (num.to_i.to_s == num)
end

if (num.to_i % 2 == 0)
    arr.push(num.to_i)
end
print arr