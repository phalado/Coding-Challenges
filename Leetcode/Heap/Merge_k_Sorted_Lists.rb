# Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.
# https://leetcode.com/problems/merge-k-sorted-lists/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  key = []
  lists.each do |list|
    while list != nil
      key << list.val
      list = list.next
    end
  end
  key.sort
end