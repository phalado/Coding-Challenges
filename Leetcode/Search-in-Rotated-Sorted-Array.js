// Search in Rotated Sorted Array

// Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

// (i.e., [0,1,2,4,5,6,7] might become [4,5,6,7,0,1,2]).

// You are given a target value to search. If found in the array return its index, otherwise return -1.

// You may assume no duplicate exists in the array.

// Your algorithm's runtime complexity must be in the order of O(log n).

// https://leetcode.com/problems/search-in-rotated-sorted-array/

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
const searchNonRotated = (array, target, index) => {
  if (array.length === 0) return -1
  if (array.length === 1) {
    return array[0] === target ? index : -1
  } 
  if (array. length === 2) {
    return array[0] === target ? index :
      array[1] === target ? index + 1 : -1
  }
  const mid = Math.floor(array.length / 2);
  if (array[mid] === target) return mid + index
  return array[mid] === target ? mid + index :
    array[mid] > target ? searchNonRotated(array.slice(0, mid), target, index) :
      searchNonRotated(array.slice(mid, array.length), target, mid + index)
}

const searchRotated = (array, target, index) => {
  if (array.length === 0) return -1
  if (array.length === 1) {
    return array[0] === target ? index : -1
  } 
  if (array. length === 2) {
    return array[0] === target ? index :
      array[1] === target ? index + 1 : -1
  }
  const mid = Math.floor(array.length / 2);
  if (array[mid] === target) return mid + index
  if (array[0] < array[mid]) {
    if (array[0] <= target && target <= array[mid])
      return searchNonRotated(array.slice(0, mid), target, index)
    return searchRotated(array.slice(mid, array.length), target, mid + index)
  }
  if (array[mid] <= target && target <= array[array.length - 1])
    return searchNonRotated(array.slice(mid, array.length), target, index + mid)
  return searchRotated(array.slice(0, mid), target, index)
}

var search = function(nums, target) {
  return searchRotated(nums, target, 0)
};