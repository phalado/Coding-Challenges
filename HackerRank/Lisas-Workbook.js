// Lisa's Workbook

// Lisa just got a new math workbook. A workbook contains exercise problems, grouped into chapters. Lisa believes a problem to be special if its index (within a chapter) is the same as the page number where it's located. The format of Lisa's book is as follows:

// There are  chapters in Lisa's workbook, numbered from  to .
// The  chapter has  problems, numbered from  to .
// Each page can hold up to  problems. Only a chapter's last page of exercises may contain fewer than  problems.
// Each new chapter starts on a new page, so a page will never contain problems from more than one chapter.
// The page number indexing starts at .
// Given the details for Lisa's workbook, can you count its number of special problems?

// For example, Lisa's workbook contains  problems for chapter , and  problems for chapter . Each page can hold  problems. The first page will hold  problems for chapter . Problem  is on page , so it is special. Page  contains only Chapter , Problem , so no special problem is on page . Chapter  problems start on page  and there are  problems. Since there is no problem  on page , there is no special problem on that page either. There is  special problem in her workbook.

// Note: See the diagram in the Explanation section for more details.

// Function Description

// Complete the workbook function in the editor below. It should return an integer that represents the number of special problems in the workbook.

// workbook has the following parameter(s):

// n: an integer that denotes the number of chapters
// k: an integer that denotes the maximum number of problems per page
// arr: an array of integers that denote the number of problems in each chapter

// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/lisa-workbook

function workbook(n, k, arr) {
    let specials = 0;
    let page = 1;
    for (let i = 0; i < n; i += 1) {
        let counter = 0;
        for (let j = 1; j <= arr[i]; j+= 1) {
            if (counter === k) {
                page += 1
                counter = 0
            }
            if (page === j) specials += 1;
            counter += 1
        }
        page += 1;
    }
    return specials;
}