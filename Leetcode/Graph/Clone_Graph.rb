# Given a reference of a node in a connected undirected graph.
# Return a deep copy (clone) of the graph.
# Each node in the graph contains a val (int) and a list (List[Node]) of its neighbors.
# https://leetcode.com/problems/clone-graph/

# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#     @val = val
#     neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def node_cloning(node, hash)
  new_node = Node.new
  new_node.val = node.val
  hash.store(new_node.val, new_node)

  node.neighbors.each do |n|
    hash = node_cloning(n, hash) unless hash.has_key?(n.val)
    new_node.neighbors << hash[n.val]
  end

  hash
end

def cloneGraph(node)
  if node == nil
    return nil
  else
    hash = node_cloning(node, {})
    hash[1]
  end
end