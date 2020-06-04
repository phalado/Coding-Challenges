# @param {Integer[]} nums
# @return {Integer[]}
def count_smaller(nums)
    return [] if nums == []
    arr = []
    for i in 0..(nums.length - 2)
        number = 0
        for j in i..(nums.length - 1)
            number += 1 if nums[i] > nums[j]
        end
        arr << number
    end
    arr << 0
end
