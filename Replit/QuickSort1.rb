# QuickSort1

# Given an array 'array' and a number 'p' in the first cell in the array, can you partition the array so that all elements greater than 'p' are to the right of it and all the numbers smaller than 'p' are to its left?
# For example, if given the following as input:

# 4 5 3 9 1

# The first number 4 is the pivot, so you should put the smaller numbers to the left, and the larger to the right, and output:

# 3 1 4 5 9

# The array should otherwise remain in the same order.

# Can you write code to partition an array?

# https://repl.it/student/submissions/11084196

def partition(array)
  # write your code here
  pi = array.first
  arr1 = []
  arr2 = []
  (1...array.length).each do |i|
    array[i] > pi ? arr2 << array[i] : arr1 << array[i]
  end
  arr1 << pi
  return arr1.concat(arr2)
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]