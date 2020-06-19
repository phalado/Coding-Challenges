// Reorder List

// Given a singly linked list L: L0→L1→…→Ln-1→Ln,
// reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…

// You may not modify the values in the list's nodes, only nodes itself may be changed.

// https://leetcode.com/problems/reorder-list/

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {void} Do not return anything, modify head in-place instead.
 */
var reorderList = function(head) {
  if (head === null) return head
  let array = [];
  while (head != null) {
    array.push(head)
    head = head.next
  }
  head = array[0]
  array.shift()
  let current = head;
  while (array.length > 0) {
    current.next = array[array.length - 1]
    array.pop();
    current = current.next;
    if (array.length > 0) {
      current.next = array[0]
      array.shift();
      current = current.next
    }
  }
  current.next = null
  return head
};