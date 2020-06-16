# Lists

# Create your own LinkedList  class for storing integers which should include two methods:  
# add(number) - Add a new Node to the end of the list with a value of number. Nothing needs to be returned. 
# get(index) - Return the value of the Node at position `index` in the List.   

# https://repl.it/student/submissions/10148911

class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail

  def add(number)
    if @head.nil?
      @head = Node.new(number)
      @tail = @head
    else
      @tail.next_node = Node.new(number)
      @tail = @tail.next_node
    end
  end

  def get(index)
    node = @head
    while index > 0
      return 'Index out of range' if node.next_node.nil?
      node = node.next_node
      index -= 1
    end
    return node.nil? ? nil : node.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)