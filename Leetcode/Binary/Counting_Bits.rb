# Given a non negative integer number num. For every numbers i in the range 0 ≤ i ≤ num
# calculate the number of 1's in their binary representation and return them as an array.
# https://leetcode.com/problems/counting-bits/

# @param {Integer} num
# @return {Integer[]}
def number_of_1_bits(num)
  arr = ("%b" % num).split('')
  sum = 0 
  arr.each do |v|
    sum += 1 unless v == "0"
  end
  sum
end

def count_bits(num)
  arr = []
  for i in 0..num
    arr << number_of_1_bits(i)
  end
  arr
end