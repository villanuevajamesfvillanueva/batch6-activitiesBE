def is_isogram(string)
    return true if string == ''
    string = string.downcase
    tally = {}
    chars = string.split('')
    chars.each { |char| tally.has_key?(char) ? tally[char] += 1 : tally[char] = 1}
    return true if tally.select{|k, v| v > 1}.empty?
    return false
end


puts(is_isogram("Dermatoglyphics"))
puts(is_isogram("aba"))
puts(is_isogram("moOse"))