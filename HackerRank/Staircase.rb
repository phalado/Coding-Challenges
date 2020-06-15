# Staircase

# Consider a staircase of size :

#    #
#   ##
#  ###
# ####
# Observe that its base and height are both equal to , and the image is drawn using # symbols and spaces. The last line is not preceded by any spaces.

# Write a program that prints a staircase of size .

# Function Description

# Complete the staircase function in the editor below. It should print a staircase as described above.

# staircase has the following parameter(s):

# n: an integer

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/staircase

def staircase(n)
    spaces = n - 1
    hashs = 1
    n.times do
        spaces.times { print ' ' }
        hashs.times { print '#' }
        puts ''
        spaces -= 1
        hashs += 1
    end
end