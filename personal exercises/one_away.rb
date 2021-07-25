# One Away
# There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
# Example:
# pale, ple -> true
# pales, pale -> true
# pale, bale -> true
# pale, bake -> false

def one_away?(str1, str2)
    return false if (str1.length - str2.length).abs > 1
    letters = [*'a'..'z', *'A'..'Z']

    # insert a character
    (0..str1.length-1).each do |i|
        letters.each do |letter|
            return true if str1.insert(i, letter) == str2
            str1.slice!(i)
        end
    end

    # remove a character
    str1.each_char { |ch| return true if str1.sub(ch, '') == str2 }

    # replace a character
    (0..str1.length-1).each do |i|
        copy = str1.dup
        letters.each do |letter|
            temp = copy
            temp[i] = letter
            return true if temp == str2
        end
    end

    false
end

p one_away?("abc", "ac")       # true
p one_away?("abc", "abbc")     # true
p one_away?("abc", "abbbc")     # false
p one_away?("abc", "aba")      # true
p one_away?("abc", "aaa")      # false


