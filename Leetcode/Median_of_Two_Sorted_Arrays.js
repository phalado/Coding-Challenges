Median of Two Sorted Arrays

There are two sorted arrays nums1 and nums2 of size m and n respectively.

Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

You may assume nums1 and nums2 cannot be both empty.

https://leetcode.com/problems/median-of-two-sorted-arrays/

/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
var findMedianSortedArrays = function(nums1, nums2) {
  const nums = [...nums1, ...nums2].sort((a, b) => a - b);
  return nums.length % 2 === 1 ? nums[(nums.length - 1) / 2]
    : (nums[(nums.length  / 2) - 1] + nums[nums.length / 2]) /2
}