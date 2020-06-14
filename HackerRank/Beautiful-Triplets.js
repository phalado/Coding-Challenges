// Beautiful Triplets

// Given a sequence of integers , a triplet  is beautiful if:

// Given an increasing sequenc of integers and the value of , count the number of beautiful triplets in the sequence.

// For example, the sequence  and . There are three beautiful triplets, by index: . To test the first triplet,  and .

// Function Description

// Complete the beautifulTriplets function in the editor below. It must return an integer that represents the number of beautiful triplets in the sequence.

// beautifulTriplets has the following parameters:

// d: an integer
// arr: an array of integers, sorted ascending

// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/beautiful-triplets

function beautifulTriplets(d, arr) {
    let number = 0;
    for (let i = 0; i < arr.length - 2; i += 1) {
        if (arr.includes(arr[i] + d) && (arr.includes(arr[i] + (2 * d)))) number += 1;
    }
    return number
}