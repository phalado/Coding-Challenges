# Merge Sort I

# You are given two sorted arrays. Can you merge the them and return one sorted array? This should be done with only one run through the array.

# https://repl.it/student/submissions/11231076

def merge_sort(array1, array2)
  final_array = []
  while(!array1.empty? && !array2.empty?)
    if array1.first <= array2.first
      final_array.push(array1.shift)
    else
      final_array.push(array2.shift)
    end
    final_array.concat(array2) if array1.empty?
    final_array.concat(array1) if array2.empty?
  end
  final_array
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]-