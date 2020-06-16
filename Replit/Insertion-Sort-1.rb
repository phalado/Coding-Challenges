# Insertion Sort 1

# Given a sorted list of numbers with an unsorted number 'X' in the right-most spot, can you write some simple code to insert 'X' into the list so it remains sorted?

# Print the list every time a value is shifted, until the list is fully sorted. The goal of this challenge is to follow the correct order of insertion sort.

# How to Solve: You can copy the right-most value ('X') to a variable, and consider its cell “empty”. Since this leaves an extra cell empty on the right, you can shift every number over until 'X' can be inserted. This will create a duplicate of each value, but when you reach the right spot, you can replace a value with 'X'.

# https://repl.it/student/submissions/11281445

def insertion_sort(array)
  # write your code here
  number = array.length - 1
  while number >= 1 do
    (0...number).each do |i|
      actual = array[i]
      nexty = array[i + 1]
      if actual > nexty
        array[i + 1] = actual
        (0...array.length).each do |a|
          a == array.length - 1 ? (print "#{array[a]}\n") : (print "#{array[a]} ")
        end
        array[i] = nexty
        # p array
      end
    end
    number = number - 1
  end
  (0...array.length).each do |a|
    a == array.length - 1 ? (print "#{array[a]}\n") : (print "#{array[a]} ")
  end
end

insertion_sort([3, 1, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9

insertion_sort([2, 3, 4, 5, 6, 7, 8, 9, 10, 1])
