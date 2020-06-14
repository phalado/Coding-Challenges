// Encryption

// An English text needs to be encrypted using the following encryption scheme.
// First, the spaces are removed from the text. Let  be the length of this text.
// Then, characters are written into a grid, whose rows and columns have the following constraints:

// For example, the sentence , after removing spaces is  characters long.  is between  and , so it is written in the form of a grid with 7 rows and 8 columns.

// ifmanwas  
// meanttos          
// tayonthe  
// groundgo  
// dwouldha  
// vegivenu  
// sroots
// Ensure that 
// If multiple grids satisfy the above conditions, choose the one with the minimum area, i.e. .
// The encoded message is obtained by displaying the characters in a column, inserting a space, and then displaying the next column and inserting a space, and so on. For example, the encoded message for the above rectangle is:

// imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau

// You will be given a message to encode and print.

// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/encryption/

function encryption(s) {
    const newString = s.split(' ').join('')
    const nCol = Math.ceil(Math.sqrt(newString.length))
    const nRow = Math.floor(Math.sqrt(newString.length)) * nCol >= newString.length ?
          Math.floor(Math.sqrt(newString.length)) : Math.floor(Math.sqrt(newString.length)) + 1
    let finalString = ''
    for (let i = 0; i < nCol; i += 1) {
        for (let j = 0; j < nRow; j += 1) {
            if (j * nCol + i < newString.length) finalString += newString[j * nCol + i]
        }
        finalString += ' '
    }
    return finalString
}