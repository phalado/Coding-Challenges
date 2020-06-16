# Quick-Sort Advanced

# Create an in-place version of Quicksort. This time, always select the last element in the 'sub-array' as a pivot. Partition the left side and then the right side of the array. Print out the whole array at the end of every partitioning method. 

# https://repl.it/student/submissions/11092531

def sorting(array, st, en)
  semi_array = array.slice(st, en - st)
  return array if semi_array.length == 1
  pivot = semi_array.last
  arrA = array.slice(0, st) unless st == 0
  arrZ = array.slice(en, array.length - en) unless en == array.length
  if semi_array.length == 2
    semi_array[0], semi_array[1] = semi_array[1], semi_array[0] if semi_array[0] > semi_array[1]
  else
    (0...semi_array.length - 1).each do |i|
      if(semi_array[i] > pivot and semi_array[i + 1] <= pivot)
        (0..i).each do |j|
          if(semi_array[j] <= pivot and semi_array[j + 1] > pivot)
            semi_array[i + 1], semi_array[j + 1] = semi_array[j + 1], semi_array[i + 1]
            break
          elsif(semi_array[j] > pivot)
            semi_array[i + 1], semi_array[j] = semi_array[j], semi_array[i + 1]
            break
          end
        end
      end
    end
  end
  semi_array = arrA.concat(semi_array) unless st == 0
  semi_array = semi_array.concat(arrZ) unless en == array.length
  p semi_array #unless semi_array == array
  semi_array = sorting(semi_array, st, semi_array.find_index(pivot)) unless semi_array.find_index(pivot) - st < 2
  semi_array = sorting(semi_array, semi_array.find_index(pivot) + 1, en) unless en - semi_array.find_index(pivot) < 2
  return semi_array
end

def advanced_quicksort(array)
  # write your code here
  array = sorting(array, 0, array.length)
  # p array
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9

advanced_quicksort([9, 8, 6, 7, 3, 5, 4, 1, 2])
# [1, 2, 6, 7, 3, 5, 4, 9, 8]
# [1, 2, 6, 7, 3, 5, 4, 8, 9]
# [1, 2, 3, 4, 6, 5, 7, 8, 9]
# [1, 2, 3, 4, 6, 5, 7, 8, 9]
# [1, 2, 3, 4, 5, 6, 7, 8, 9]

# advanced_quicksort([406, 157, 415, 318, 472, 46, 252, 187, 364, 481, 450, 90, 390, 35, 452, 74, 196, 312, 142, 160, 143, 220, 483, 392, 443, 488, 79, 234, 68, 150, 356, 496, 69, 88, 177, 12, 288, 120, 222, 270, 441, 422, 103, 321, 65, 316, 448, 331, 117, 183])