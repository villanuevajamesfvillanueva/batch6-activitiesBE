# function that multiplies two real numbers using recursion

def pow10(len)
    str = '1'
    for i in 1..len
        str = str+'0'
    end
    str.to_f
end

def my_funcV2(a, b)
    arr1 = a.to_s.split('.')
    arr2 = b.to_s.split('.')
    pow10_1 = arr1[1].to_s.length
    pow10_2 = arr2[1].to_s.length
    t1 = my_func(arr1[0].to_i, arr2[0].to_i)
    t2 = my_func(arr1[0].to_i, arr2[1].to_i)/(pow10(pow10_1))
    t3 = my_func(arr1[1].to_i, arr2[0].to_i)/(pow10(pow10_2))
    t4 = my_func(arr1[1].to_i, arr2[1].to_i)/(pow10(pow10_1 + pow10_2))
    puts t1, t2, t3, t4
    t1 + t2 + t3 + t4
end

puts my_funcV2(2.5324, 3.7233)
