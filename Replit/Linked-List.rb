# Linked List  

# Implement the following two methods in your own LinkedList class. You should start with your code from yesterday:  

# add_at(index, item) - Add an item to a specific location in the list. The index will be a positive integer that represents the index where you should insert item. Zero is the position of the first element of the list. 
# remove(index) - Remove an item from a specific location in the List.  

# You should also implement a private helper method get_node(index) to return the Node at a specific index.  

# You should have already completed these two methods in the previous challenge:  
# add(number) - Add number to the end of your LinkedList. 
# get(index) - Get the number located at index.  

# https://repl.it/student/submissions/10232682

# Start with your code from last challenge.
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
  
  def add_at(index, number)
    if index == 0
      @head = Node.new(number, @head)
    else
      get_node(index - 1).next_node = Node.new(number, get_node(index))
    end
  end
  
  def remove(index)
    if index == 0 
      @head = @head.next_node
    else
      get_node(index - 1).next_node = get_node(index).next_node
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
  
  private
    
    def get_node(index)
      return @head if index == 0
      node = @head
      while index > 0
        return 'Index out of range' if node.next_node.nil?
        node = node.next_node
        index -= 1
      end
      return node
    end
end


list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5