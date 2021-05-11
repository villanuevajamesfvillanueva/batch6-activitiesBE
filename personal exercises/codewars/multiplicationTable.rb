def multiTable(number)
    str = ""
    (1..10).each { |x| str += "#{x} * #{number} = #{x * number}\n" }
    return str
end

puts multiTable(5)
puts multiTable(1)