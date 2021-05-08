arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]

def count_positives_sum_negatives(arr)
    return [] if arr.empty?
    count = 0
    sum = 0
    result = []
    arr.each {|x| x > 0 ? count += 1 : sum += x}
    result.push(count)
    result.push(sum)
    return result
end


ans1 = count_positives_sum_negatives([])
print ans1
puts ans1.instance_of? Array

ans2 = count_positives_sum_negatives(arr)
print ans2
puts ans2.instance_of? Array

ans3 = count_positives_sum_negatives([0, 0, 0, 0])
print ans3
puts ans3.instance_of? Array

ans4 = count_positives_sum_negatives([1, 1, 1, 1])
print ans4
puts ans4.instance_of? Array