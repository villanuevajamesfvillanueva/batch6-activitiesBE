def century(year)
    year%100 == 0 ? ans = year/100 : ans = year/100 + 1
    return ans
end

puts century(1705)
puts century(2000)
