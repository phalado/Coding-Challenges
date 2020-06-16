# Prime Prime

# The "Prime Prime" is a prime number that is the factor of the most numbers in a given list. Can you find the Prime prime in each list?
# For example, for the list {2, 3, 5, 6, 9}, the answer is 3, since 3 is a factor of 3, 6, and 9, which is more than any other number in the list.
# Note: Unlike the prime challenge, here each number N in a list will be in the range 2 to 10,000.

# https://repl.it/student/submissions/10955973

require 'set'

class Sett
  attr_accessor :sety
  
  def initialize
    @sety = Set[2, 3, 5, 7]
    (11..10000).each do |v|
      @sety.add(v) if check_prime(v)
    end
  end
  
  def check_prime(value)
    (2..Math.sqrt(value).to_i).each do |d|
      return false if value % d == 0
    end
    true
  end
end

def n_factors(arr, value)
  factors = 0
  arr.each do |v|
    factors += 1 if (v > value && v % value == 0)
  end
  factors
end
  

def prime_prime(array)
  # write your code here
  set = Sett.new
  max = 0
  prime = 0
  set.sety.each do |v|
    if n_factors(array, v) > max
      max = n_factors(array, v) 
      prime = v
    end
  end
  return prime
end

puts prime_prime([2, 3, 5, 6, 9])
# => 3

puts prime_prime([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 11

puts prime_prime([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 7

puts prime_prime([6358, 8623, 2345, 1385, 6037, 9161, 796, 8125, 8829, 9747, 2834, 3579, 1043, 1880, 3508, 9822, 8739, 2372, 7723, 5049, 2661, 5982, 9692, 9427, 562, 6617, 3756, 396, 7009, 3907, 6920, 3766, 6139, 6310, 7011, 650, 4758, 5153, 6200, 3146])