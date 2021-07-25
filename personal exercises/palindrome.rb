def perm_of_palindrome?(str)
    clean_str = str.downcase.split.join
    tally = {}
    clean_str.each_char do |x|
        tally.include?(x) ? tally[x] += 1 : tally[x] = 1
    end

    odd = 0
    tally.each_value do |x|
      odd += 1 if x.odd?
    end
    odd > 1 ? false : true
end



def can_be_palindrome?(str)
    clean_str = str.downcase.split.join
    tally = {}
    clean_str.each_char do |x|
        tally.include?(x) ? tally[x] += 1 : tally[x] = 1
    end

    return tally.values.all? { |x| x.even? } if clean_str.length.even?    
    tally_group1 = tally.values.group_by(&:odd?).values[0]
    tally_group2 = tally.values.group_by(&:odd?).values[1]
    if tally_group1.all? { |x| x.odd? }
        return tally_group1.count == 1
    elsif tally_group2.all? { |x| x.odd? }
        return tally_group2.count == 1
    end
    # tally.values.group_by(&:odd?).values.sort_by(&:count)[0][0] == 1
end


p perm_of_palindrome?('Taco cat')
p can_be_palindrome?('Taco cat')
p can_be_palindrome?('aaaaaaaa')
p can_be_palindrome?('bad boii')
p can_be_palindrome?('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbczazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazazaza')
p perm_of_palindrome?('Tact Coa')
p perm_of_palindrome?('bad boii')
p perm_of_palindrome?('race car')
p perm_of_palindrome?('race arc')
p perm_of_palindrome?('racearc')


#check if string is a permutation of a palindrome
    # get all permutation of the string
    # check if any is a palindrome
