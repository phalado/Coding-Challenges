Library Fine

Your local library needs your help! Given the expected and actual return dates for a library book, create a program that calculates the fine (if any). The fee structure is as follows:

If the book is returned on or before the expected return date, no fine will be charged (i.e.: .
If the book is returned after the expected return day but still within the same calendar month and year as the expected return date, .
If the book is returned after the expected return month but still within the same calendar year as the expected return date, the .
If the book is returned after the calendar year in which it was expected, there is a fixed fine of .
Charges are based only on the least precise measure of lateness. For example, whether a book is due January 1, 2017 or December 31, 2017, if it is returned January 1, 2018, that is a year late and the fine would be .

https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/library-fine/

function libraryFine(d1, m1, y1, d2, m2, y2) {
    if (y1 > y2) return 10000
    if (y2 > y1) return 0
    if (m1 > m2) return 500 * (m1 - m2)
    if (m2 > m1) return 0
    if (d1 > d2) return 15 * (d1 - d2)
    return 0
}