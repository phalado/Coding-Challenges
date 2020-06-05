# Reverse bits of a given 32 bits unsigned integer.
# https://leetcode.com/problems/reverse-bits/

# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  array = ("%b" % n).split('')
  new_array = array.reverse.join
  (32 - array.length).times do
    new_array << "0"
  end
  return new_array.to_i(2)
end