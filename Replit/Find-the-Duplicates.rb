# Find the Duplicates

# Numeros The Artist was arranging two identical lists of numbers A and B into specific orders. While it seemed like two random arrangements to everyone else, Numeros was very proud of his arrangements. Unfortunately, some numbers got left out of List A. Can you find the missing numbers from A without messing up his order?

# https://repl.it/student/submissions/11238503

def duplicates(arr1, arr2)
  # write your code here
  hash = {}
  arr2.each do |v|
    hash[v].nil? ? hash[v] = 1 : hash[v] += 1
  end
  arr1.each do |v|
    hash[v] -= 1
  end
  new_arr = []
  hash.each do |h|
    new_arr << h[0] if h[1] > 0
  end
  new_arr.sort
end

# p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]

p duplicates([10, 3, 17, 11, 5, 10, 3, 9, 11, 33, 41, 22, 8, 17, 3, 11, 35, 52, 73, 88], [22, 3, 10, 11, 33, 41, 11, 5, 3, 17, 10, 3, 9, 11, 52, 73, 88, 35, 10, 11, 3, 8, 17, 8])