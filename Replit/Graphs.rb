# Graphs

# You will be given lists of numbers as input based on the above format. Then start from Node 0 and repeatedly visit the next connected node until you reach Node 4. You need to return an array with all the nodes visited.

# While Nodes don't necessarily have a set order for their connections, in this challenge you should go to the first Node in the list of connected nodes.  For example, in the above graph:
# - go from 0 to 2
# - then go from 2 to 5 (ignore 0 and 3)
# - then go from 5 to 4 (ignore 2)
# - then stop as 4 is a number we were looking for.

# https://repl.it/student/submissions/10662425

def graph(hash_graph)
  array = [0]
  while array.last != 4 do
    array << hash_graph[array.last][0]
  end
  array
end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]