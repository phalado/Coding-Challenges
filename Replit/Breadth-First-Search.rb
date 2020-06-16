# Breadth-First Search

# BFS begins at one node in a graph and visits all the neighboring nodes. It then goes to each of those neighbors to explore their unvisited neighbors in order. So it goes through the entire graph one level at a time, until the whole graph has been visited.

# Return an array with the given graph in BFS order.

# https://repl.it/student/submissions/10672017

def bfs(graph)
  array = [0]
  while !graph.empty?
    array.each do |element|
      if graph.include? element
        graph[element].each do |g|
          array << g if graph.include? g and !array.include? g
        end
        graph.delete(element)
      end
    end
  end
  return array
end

def walking(graph, array)
  
end

# p bfs({
#   0 => [2], 
#   1 => [4], 
#   2 => [5, 0, 3], 
#   3 => [2], 
#   4 => [1, 5], 
#   5 => [4, 2]
# })
# => [0, 2, 5, 3, 4, 1]

p bfs({
  0=>[1, 2],
  1=>[0, 2],
  2=>[0, 1, 3, 4, 5],
  3=>[2, 4],
  4=>[3, 2],
  5=>[2]
})