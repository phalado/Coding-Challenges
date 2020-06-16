# Simple Quick Sort

# Can you code a Quicksort algorithm?

# https://repl.it/student/submissions/12542799

def simple_quicksort(arr)
  pi = arr.first
  arr1 = []
  arr2 = []
  (1...arr.length).each do |i|
    arr[i] > pi ? arr2 << arr[i] : arr1 << arr[i]
  end
  arr1 = simple_quicksort(arr1) unless arr1.length <= 1
  arr2 = simple_quicksort(arr2) unless arr2.length <= 1
  arr1 << pi
  arr1.concat(arr2)
  puts arr1.join(" ")
  return arr1
end


p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10