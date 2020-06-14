# Equalize the Array

# Karl has an array of integers. He wants to reduce the array until all remaining elements are equal. Determine the minimum number of elements to delete to reach his goal.

# For example, if his array is , we see that he can delete the  elements  and  leaving . He could also delete both twos and either the  or the , but that would take  deletions. The minimum number of deletions is .

# Function Description

# Complete the equalizeArray function in the editor below. It must return an integer that denotes the minimum number of deletions required.

# equalizeArray has the following parameter(s):

# arr: an array of integers

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/equality-in-a-array

def equalizeArray(arr)
    arr0 = []
    arr1 = []
    arr.each do |value|
        index = arr0.find_index(value)
        if index == nil
            arr0 << value
            arr1 << 1
        else
            arr1[index] += 1
        end
    end
    return arr1.sum - arr1.max

end