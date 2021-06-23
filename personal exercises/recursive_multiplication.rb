# Recursive Multiply
# Write a recursive function to multiply two positive integers without using the *operator.
# You can use addition, subtraction, and bit shifting, but you should minimize the number of those operations.


def my_func(a, b)
    return 0 if (a == 0 || b == 0)
    return a+b-1 if b <= 1
    a + my_func(a, b-1)
end

puts my_func(7, 6)
puts my_func(6, 7)
puts my_func(12, 10)
puts my_func(9, 5)
puts my_func(8, 0)
puts my_func(0, 8)
puts my_func(1, 12)
puts my_func(12, 1)
puts my_func(0, 0)

describe("get product") do
    it("gets correct product") do
        Test.assert_equals(my_func(7, 6), 42)
        Test.assert_equals(my_func(12, 10), 120)
        Test.assert_equals(my_func(9, 5), 45)
        Test.assert_equals(my_func(0, 8), 0)
         Test.assert_equals(my_func(8, 0), 0)
    end
end
