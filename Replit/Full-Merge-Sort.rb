# Full Merge Sort

# In this challenge you need to print the data that accompanies each integer in a list. In addition, if two strings have the same integers, you need to print the strings in their original order. This means your sorting algorithm will need to be stable, i.e. that the original order is maintained for equal elements.

# https://repl.it/student/submissions/12714831

def merge_sort(array1, array2)
  final_array = []
  while(!array1.empty? && !array2.empty?)
    if array1.first.to_i <= array2.first.to_i
      final_array.push(array1.shift)
    else
      final_array.push(array2.shift)
    end
    final_array.concat(array2) if array1.empty?
    final_array.concat(array1) if array2.empty?
  end
  final_array
end

def intermediate_method(array)
  if array.length > 1
    array1 = intermediate_method(array[0...array.length/2])
    array2 = intermediate_method(array[array.length/2..-1])
    array = merge_sort(array1, array2)
  end
  array
end

def full_merge_sort(array)
  array = intermediate_method(array)
  new_array = []
  array.each do |v|
    new_array.push(v.split(" ").last)
  end
  new_array
end

full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
