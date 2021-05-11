def disemvowel(str)
    return str.tr('aeiouAEIOU', '')
    #seems like tr doesn't accept regex for first arg
    # return str.tr(/aeiou/i, '')
end

def disemvowel2(str)
    str.delete('aeiouAEIOU')
end

puts disemvowel('This website is for losers LOL!')
