arr1 = [34, 15, 88, 2]
arr2 = [34, -345, -1, 100]

def getSmallestInt (arr)
    smallest = arr[0]
    arr.each { |x| smallest = x if (x < smallest) }
    return smallest
end

puts getSmallestInt(arr1)
puts getSmallestInt(arr2)