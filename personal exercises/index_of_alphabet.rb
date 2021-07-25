# Index of Alphabet
# Make a method that that accepts an integer and returns the equivalent based on the index in the Alphabet
# - 1 returns A
# - 20 returns T
# - 1000 returns ALL
# - 26 returns Z
# - 100 returns CV

def converter(n)
    letters_arr = *('a'..'z')
    return letters_arr[n-1] if n < 26
    indeces, ans, i = [], [], 0
    i+=1 while n > 26**i
    ((i-1).downto(0)).to_a.each do |j|
        index = n / 26**(j)
        indeces << index
        n -= 26**j*index
    end
    indeces.each { |index| ans << letters_arr[index-1] }
    ans.join
end

p conv2(100)
p conv2(1)
p conv2(2)
p conv2(20)
p conv2(26)
p conv2(25)
p conv2(27)

# describe("get product") do
#     it("gets correct product") do
#         Test.assert_equals(converter(1000), 'ALL')
#         Test.assert_equals(converter(100), 'CV')
#         Test.assert_equals(converter(1), 'A')
#         Test.assert_equals(converter(20), 'T')
#         Test.assert_equals(converter(26), 'Z')
#     end
# end
