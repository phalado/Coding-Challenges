# Picking Numbers

# Given an array of integers, find and print the maximum number of integers you can select from the array such that the absolute difference between any two of the chosen integers is less than or equal to . For example, if your array is , you can create two subarrays meeting the criterion:  and . The maximum length subarray has  elements.

# Function Description

# Complete the pickingNumbers function in the editor below. It should return an integer that represents the length of the longest array that can be created.

# pickingNumbers has the following parameter(s):

# a: an array of integers

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/picking-numbers

def pickingNumbers(a)
    a = a.sort
    p a
    partial_result = 1
    total_result = 0
    for i in (0...a.length)
        for j in ((i + 1)...a.length)
            partial_result += 1 if a[j] - a[i] <= 1
        end
        total_result = partial_result if partial_result > total_result
        partial_result = 1
    end
    total_result
end