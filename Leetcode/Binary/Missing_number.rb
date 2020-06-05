# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the
# one that is missing from the array.
# https://leetcode.com/problems/missing-number/

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    return 0 unless nums.include? 0
    value = (0..nums.max).to_a.sum - nums.sum
    return value == 0 ? nums.max + 1 : value
end