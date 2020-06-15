# HashTables

# Challenge
# Create your own list-based hash table with n mod 11 as the hash function for each number n. Always use the absolute value of n.
# Given a list of numbers, hash them all into the hash table.
# Return an array with the numbers in the order that they appear in the hash table. 

# https://repl.it/student/submissions/13025127

def hash_table(arr)
  # write your code here
  table = []
  arr.each do |v|
    table[v.abs % 11].nil? ? table[v.abs % 11] = [v] : table[v.abs % 11] << v
  end
  array = []
  table.each do |tab|
    unless tab.nil?
      tab.each do |t|
        array << t
      end
    end
  end
  return array
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]