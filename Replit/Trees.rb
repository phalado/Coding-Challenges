# Trees

# The input for this challenge will provide an array of numbers in the above "breadth-first" format, and use 0's for non-nodes. 
# Can you print out the sum of the Leftmost side of the Tree?

# Tip: A number located at position i in an array will have it's left child located at the position 2i+1 in the array. 

# https://repl.it/student/submissions/11399543

def leftmost_nodes_sum(array)
  sum = 0
  index = 0
  next_index = 0
  while index < array.length
    index = (2 ** next_index) - 1
    sum += array[index].to_i
    next_index += 1
  end
  sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11