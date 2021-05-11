def disemvowel(str)
    return str.tr('aeiouAEIOU', '')
end

def disemvowel2(str)
    str.delete('aeiouAEIOU')
end

puts disemvowel('This website is for losers LOL!')
