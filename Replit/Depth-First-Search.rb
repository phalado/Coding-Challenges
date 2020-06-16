# Depth-First Search

# DFS goes through a graph as far as possible in one direction before backtracking to other nodes. DFS is similar to the pre-order tree traversal, but you need to make sure you don't get stuck in a loop. To do this, you'll need to keep track of which Nodes have been visited.

# Create a graph from the given input and Run through it with a Depth-first-search. Return an Array with the nodes in the order you first visit them. Visit the first adjacent Node in the input before going on to the other nodes.

# https://repl.it/student/submissions/10673839

def depth_first_search(graph)
  dfs = DFSgraph.new(graph)
  return dfs.visited
end

class DFSgraph
  attr_reader :visited
  
  def initialize(graph)
    @graph = graph
    @visited = []
    
    path(0)
  end
  
  def path(value)
    @visited << value
    @graph[value].each do |v|
      path(v) unless @visited.include? v
    end
  end
end

p depth_first_search({
  0 => [1, 6, 7], 
  1 => [2, 0, 5], 
  2 => [3, 4, 1], 
  3 => [2], 
  4 => [2], 
  5 => [1],
  6 => [0],
  7 => [0, 8, 11],
  8 => [7, 9, 10],
  9 => [8],
  10 => [8],
  11 => [7]
})
# => [0, 2, 5, 4, 1, 3]