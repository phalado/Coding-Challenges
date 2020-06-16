# Backtracking Recursion

# You will be given a list of numbers where the first number is the desired sum and the remaining numbers are the coins. Determine if the coins can be added together to reach the exact sum. You cannot use the same coin twice, but you can use duplicate coins (if there are any).
# For example, when given (12, [1, 2, 3, 4, 5]), print true since 1+2+4+5 = 12 (among other possibilities). When given (11, [1, 5, 9, 13]), print false, since there's no way to reach a sum of 11 with those numbers.

# Go through the array of coins in order. For each coin you reach, you can  either add it to your sum, or ignore it. Try each of these possibilities, and go on to the next coin within each one of them. Then repeat the same process with the next coin.

# https://repl.it/student/submissions/10529763

def exact_sum?(k, coins)
  (2..coins.length).each do |i|
    return true if coins.permutation(i).to_a.any?{ |p| p.sum == k }
  end
  false
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false
