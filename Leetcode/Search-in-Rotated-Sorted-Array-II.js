// Search in Rotated Sorted Array II

// Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

// (i.e., [0,0,1,2,2,5,6] might become [2,5,6,0,0,1,2]).

// You are given a target value to search. If found in the array return true, otherwise return false.

// https://leetcode.com/problems/search-in-rotated-sorted-array-ii/

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {boolean}
 */
const searchNonRotated = (array, target) => {
  if (array.length === 0) return false
  if (array.length === 1) {
    return array[0] === target ? true : false
  } 
  if (array. length === 2) {
    return (array[0] === target || array[1] === target) ? true : false
  }
  const mid = Math.floor(array.length / 2);
  if (array[mid] === target) return true
  return array[mid] === target ? true :
    array[mid] > target ? searchNonRotated(array.slice(0, mid), target) :
      searchNonRotated(array.slice(mid, array.length), target)
}

const searchRotated = (array, target) => {
  if (array.length === 0) return false
  if (array.length === 1) {
    return array[0] === target ? true : false
  } 
  if (array. length === 2) {
    return (array[0] === target || array[1] === target) ? true : false
  }
  const mid = Math.floor(array.length / 2);
  if (array[mid] === target) return true
  if (array[0] === array[mid - 1] && array[0] === array[array.length - 1])
    return (searchRotated(array.slice(0, mid), target) ||
            searchRotated(array.slice(mid, array.length), target))
  if (array[0] <= array[mid - 1]) {
    if (array[0] <= target && target <= array[mid - 1])
      return searchNonRotated(array.slice(0, mid), target)
    return searchRotated(array.slice(mid, array.length), target)
  }
  if (array[mid] <= target && target <= array[array.length - 1])
    return searchNonRotated(array.slice(mid, array.length), target)
  return searchRotated(array.slice(0, mid), target)
}

var search = function(nums, target) {
  return searchRotated(nums, target)
};