# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100

# Attention: If the number has leading zeros the amount of digits should be considered.

def increment_string(input)
    return input + '1' if !(input[-1] =~ /[0-9]/)
    split = input.scan(/\d+|\D+/)
    no_num = true
    res = ''
    split.each do |item|
        if (item.scan(/\D/).empty?)
            item = item.next
            no_num = false
        end
        res += item
    end
    return res + '1' if (no_num)
    res

end


puts increment_string('foo')
puts increment_string('foobar001')
puts increment_string('foobar1')
puts increment_string('foobar00')
puts increment_string('foobar99')
puts increment_string('')
puts increment_string('foo99barr')