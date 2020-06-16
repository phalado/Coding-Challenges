# How Tall is the Tree

# Return the height of the Tree.

# https://repl.it/student/submissions/10588372

def binary_tree_height(array_tree)
  return Math.log(array_tree.length, 2).round
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3