# Write a function that takes an unsigned integer and return the number of '1' bits it has
# (also known as the Hamming weight).
# https://leetcode.com/problems/number-of-1-bits/

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  arr = ("%b" % n).split('')
  sum  = 0
  arr.each do |v|
    sum += 1 unless v == "0"
  end
  sum
end