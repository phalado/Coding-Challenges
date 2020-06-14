// Invert Binary Tree
// Invert a binary tree.
// https://leetcode.com/problems/invert-binary-tree/

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
 * @return {TreeNode}
 */
const invertNode = node => {
  const newRight = node.right
  node.right = node.left
  node.left = newRight
  if (node.left !== null) node.left = invertNode(node.left)
  if (node.right !== null) node.right = invertNode(node.right)
  return node
}

var invertTree = function(root) {
  if (root === null) return root
  root = invertNode(root)
  return root
};
