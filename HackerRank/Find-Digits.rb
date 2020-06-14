# Find Digits

# An integer  is a divisor of an integer  if the remainder of .

# Given an integer, for each digit that makes up the integer determine whether it is a divisor. Count the number of divisors occurring within the integer.

# Note: Each digit is considered to be unique, so each occurrence of the same digit should be counted (e.g. for ,  is a divisor of  each time it occurs so the answer is ).

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/find-digits

def findDigits(n)
    count = 0
    n.to_s.split("").each do |v|
        count += 1 if v.to_i != 0 and n % v.to_i == 0
    end
    count
end