def isSquare (num)
    return false if (num < 0)
    (0..num).each { |x| return (x**2) == num ? true : false }
end

test_arr = [-1, 0, 3, 4, 25, 26]
test_arr.each { |x| puts "#{x} => #{isSquare(x)}" }
