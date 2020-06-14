Maximum Depth of Binary Tree
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

Note: A leaf is a node with no children.
https://leetcode.com/problems/maximum-depth-of-binary-tree/

/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @return {number}
 */
const getDepth = (node, d, md) => {
  d += 1
  md = d > md ? d : md
  if (node.left !== null) md = getDepth(node.left, d, md)
  if (node.right !== null) md = getDepth(node.right, d, md)
  return md
}

var maxDepth = function(root) {
  if (root === null) return 0
  return getDepth(root, 0, 0)
};