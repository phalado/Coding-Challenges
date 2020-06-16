# Prepare for Full Counting Sort

# For every value i from 0 to 99, can you return an array L, with the number of elements that are less than or equal to i?

# https://repl.it/student/submissions/11078905

def full_counting_sort_prep(array)
  # write your code here
  new_arr = []
  100.times do
    new_arr << 0
  end
  array.each do |value|
    new_arr[value.to_i] += 1
  end
  (1...new_arr.length).each do |i|
    new_arr[i] += new_arr[i - 1]
  end
  new_arr
end

p full_counting_sort_prep(["4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => [1, 3, 5, 6, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]