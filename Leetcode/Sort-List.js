// Sort List

// Sort a linked list in O(n log n) time using constant space complexity.

// https://leetcode.com/problems/sort-list/

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
const createList = (array, index) => {
  let node = new ListNode
  node.val = array[index]
  index < array.length - 1 ?
    node.next = createList(array, index + 1) :
    node.next = null
  return node
}

var sortList = function(head) {
  if (head === null) return head
  let array = []
  while (head != null) {
    array.push(head.val)
    head = head.next
  }
  return createList(array.sort((a,b) => a - b), 0)
};