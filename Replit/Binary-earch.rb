# Binary Search

# The method sqrt takes in one square number. 

# Fill the method sqrt_recursive that returns the square root of a given number.
# Do not use any built in methods for calculating the square-root and don't try searching through all the numbers. Instead, use a binary-style search to home in on the actual square root. 
# (To make it simpler, the input will just contain square numbers.)

# https://repl.it/student/submissions/10396556

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  teste = (max_interval + min_interval) / 2
  if teste ** 2 > number
    return sqrt_recursive(number, min_interval, teste)
  elsif teste ** 2 < number
    return sqrt_recursive(number, teste, max_interval)
  else
    return teste
  end
end

puts sqrt(25)
puts sqrt(7056)