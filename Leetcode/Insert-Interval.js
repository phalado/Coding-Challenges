// Insert Interval
// Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).

// You may assume that the intervals were initially sorted according to their start times.
// https://leetcode.com/problems/insert-interval/

/**
 * @param {number[][]} intervals
 * @param {number[]} newInterval
 * @return {number[][]}
 */
var insert = function(intervals, newInterval) {
  let result = intervals.filter(int => (
    (int[0] >= newInterval[0] && int[0] <= newInterval[1]) ||
    (int[1] >= newInterval[0] && int[1] <= newInterval[1]) ||
    (newInterval[0] >= int[0] && newInterval[0] <= int[1]) ||
    (newInterval[1] >= int[0] && newInterval[1] <= int[1]) 
  ))
  result.push(newInterval)
  
  intervals = intervals.filter(int => (
    (interval[1] < newInterval[0] || interval[0] > newInterval[1])
  ))
  intervals.push(
    [
      result.sort((a, b) => a[0] - b[0])[0][0],
      result.sort((a, b) => a[1] - b[1])[result.length - 1][1]]
  )
  intervals.sort((a, b) => a[0] - b[0])
  return intervals
};