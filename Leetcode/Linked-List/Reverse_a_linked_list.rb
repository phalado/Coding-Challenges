# Reverse a singly linked list.
# https://leetcode.com/problems/reverse-linked-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def new_list(node, array)
    array.unshift(node.val)
    array = new_list(node.next, array) unless node.next == nil
    array
end

def reverse_list(head)
    unless head == nil
        array = new_list(head, [])
    else
        array = []
    end
    p array
end