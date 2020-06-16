Sliding Maximum

For every k continuous numbers in an array, print the  largest number. This challenge is easy to "brute-force", but see if you  can find the optimal solution.

Simple Solution: O(nk)
Better Solution: O(n log k)
Optimal Solution: O(n)

https://repl.it/student/submissions/10257158

def sliding_maximum(k, array)
  r_array = []
  (0..(array.length - k)).each do |i|
    r_array << array[i, k].max
  end
  return r_array
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]