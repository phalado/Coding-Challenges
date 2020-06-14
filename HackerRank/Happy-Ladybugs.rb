# Happy Ladybugs

# Happy Ladybugs is a board game having the following properties:

# The board is represented by a string, , of length . The  character of the string, , denotes the  cell of the board.
# If  is an underscore (i.e., _), it means the  cell of the board is empty.
# If  is an uppercase English alphabetic letter (ascii[A-Z]), it means the  cell contains a ladybug of color .
# String  will not contain any other characters.
# A ladybug is happy only when its left or right adjacent cell (i.e., ) is occupied by another ladybug having the same color.
# In a single move, you can move a ladybug from its current position to any empty cell.
# Given the values of  and  for  games of Happy Ladybugs, determine if it's possible to make all the ladybugs happy. For each game, print YES on a new line if all the ladybugs can be made happy through some number of moves. Otherwise, print NO.


# As an example, . You can move the rightmost  and  to make  and all the ladybugs are happy.

# Function Description

# Complete the happyLadybugs function in the editor below. It should return an array of strings, either 'YES' or 'NO', one for each test string.

# happyLadybugs has the following parameters:

# b: an array of strings that represents the initial positions and colors of the ladybugs

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/happy-ladybugs

def happyLadybugs(b)
    arr = b.split('')
    unless arr.include?('_')
        return 'NO' unless arr[0] == arr[1] and arr[-1] == arr[-2]
        for i in 1...(arr.length - 1)
            return 'NO' if arr[i] != arr[i - 1] and arr[i] != arr[i + 1]
        end
        return 'YES'
    end
    keys = []
    values = []
    arr.each do |value|
        unless value == '_'
            if keys.include?(value)
                values[keys.index(value)] = values[keys.index(value)] + 1
            else
                keys << value
                values << 1
            end
        end
    end
    return 'NO' if values.include?(1)
    'YES'
end