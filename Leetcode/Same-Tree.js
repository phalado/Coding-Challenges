Same Tree
Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.
https://leetcode.com/problems/same-tree/

/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} p
 * @param {TreeNode} q
 * @return {boolean}
 */
const checkNode = (p, q) => {
  if (p === null && q === null) return true
  if ((p === null && q !== null) || (p !== null && q === null)) return false
  if ((p.val !== q.val) || 
    (p.left === null && q.left !== null) ||
    (p.left !== null && q.left === null) ||
    (p.right !== null && q.right === null) ||
    (p.right === null && q.right !== null)
  ) {
    return false
  }
  if ((!checkNode(p.left, q.left)) && p.left !== null) return false
  if ((!checkNode(p.right, q.right)) && p.right !== null) return false
  return true
}

var isSameTree = function(p, q) {
  return checkNode(p, q)
};