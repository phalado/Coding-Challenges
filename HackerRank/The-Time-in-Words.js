// The Time in Words

// Given the time in numerals we may convert it into words, as shown below:

// At , use o' clock. For , use past, and for  use to. Note the space between the apostrophe and clock in o' clock. Write a program which prints the time in words for the input given in the format described.

// Function Description

// Complete the timeInWords function in the editor below. It should return a time string as described.

// timeInWords has the following parameter(s):

// h: an integer representing hour of the day
// m: an integer representing minutes after the hour

// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/the-time-in-words/

const getHour = h => {
    const hour = [
        'one',
        'two',
        'three',
        'four',
        'five',
        'six',
        'seven',
        'eight',
        'nine',
        'ten',
        'eleven',
        'twelve'
    ];
    return hour[h - 1];
}

const getMin = m => {
    const min = [
        'one',
        'two',
        'three',
        'four',
        'five',
        'six',
        'seven',
        'eight',
        'nine',
        'ten',
        'eleven',
        'twelve',
        'thirteen',
        'fourteen',
        'quarter',
        'sixteen',
        'seventeen',
        'eighteen',
        'nineteen',
        'twenty',
        'twenty one',
        'twenty two',
        'twenty three',
        'twenty four',
        'twenty five',
        'twenty six',
        'twenty seven',
        'twenty eight',
        'twenty nine',
        'half',
    ];
    return min[m -1];
}

function timeInWords(h, m) {
    if (h === 12 && m > 30) h = 0;
    if (m === 0) return (getHour(h) + ' o\' clock');
    if (m === 1) return (getMin(1) + ' minute past ' + getHour(h));
    if (m === 15) return (getMin(m) + ' past ' + getHour(h));
    if (m === 45) return (getMin(60 - m) + ' to ' + getHour(h + 1));
    if (m === 30) return (getMin(m) + ' past ' + getHour(h));
    if (m <= 29) return (getMin(m) + ' minutes past ' + getHour(h));
    return (getMin(60 - m) + ' minutes to ' + getHour(h + 1));
}