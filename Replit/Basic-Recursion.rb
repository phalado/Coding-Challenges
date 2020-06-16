# Basic Recursion

# You will be given a positive integer number . Fill in the method sum so that it adds up all the positive integers up to number and returns the sum.
# For example, when given 4 it should return 10 (4+3+2+1).

# While there are other ways to solve this challenge, you should use recursion to get the sum.

# https://repl.it/student/submissions/10396521

def sum(number)
  return number == 0 ? 0 : number + sum(number - 1)
end

puts sum(4)
puts sum(10)