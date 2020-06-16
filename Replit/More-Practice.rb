More Practice

Given a list of numbers, can you find all the pairs of numbers whose sum equals k?

https://repl.it/student/submissions/10956271

def find_pairs(array, k)
  # write your code here
  new_array = []
  array.permutation(2).to_a.each do |a|
    unless new_array.include? [a[1], a[0]]
      new_array << a if a.sum == k
    end
  end
  new_array
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]