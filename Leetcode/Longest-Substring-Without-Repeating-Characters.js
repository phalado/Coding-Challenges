// Longest Substring Without Repeating Characters
// Given a string, find the length of the longest substring without repeating characters.
// https://leetcode.com/problems/longest-substring-without-repeating-characters/

/**
 * @param {string} s
 * @return {number}
 */
const testString = (s, i) => {
  let subString = s[i]
  for (j = parseInt(i) + 1; j < s.length; j += 1) {
    if (subString.includes(s[j])) {
      return subString.length
    }
    subString += s[j]
  }
  return subString.length
}

var lengthOfLongestSubstring = function(s) {
  let subString = 0;
  for (i in s) {
    let newSubString = testString(s, i);
    subString = newSubString > subString ? newSubString : subString;
  }
  return subString;
};