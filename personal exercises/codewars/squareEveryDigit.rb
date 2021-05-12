# Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

# Note: The function accepts an integer and returns an integer

def square_digits num
    arr = num.to_s.split('')
    result = ''
    arr.each { |x| result += (x.to_i * x.to_i).to_s }
    return result.to_i
end

puts square_digits(3212)
puts square_digits(2112)
puts square_digits(1111)
puts square_digits(1234321)
puts square_digits(0)
