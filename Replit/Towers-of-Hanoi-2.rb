# Towers of Hanoi 2

# Create a program that solves the tower of Hanoi. You will be given one number as input - the number of disks on Peg 1. 
# Create a method that prints a string with the correct steps to solve the puzzle.

# https://repl.it/student/submissions/10399624

def hanoi_steps(number_of_discs)
  # your code here
  move(number_of_discs, 1, 1, 3, 2)
end

def move(n, a, b, c, d)
  if n == 1
    print "#{b}->#{c}\n"
  else
    move(n - 1, 1, b, d, c)
    move(1, n, b, c, d)
    move(n - 1, 1, d, c, b)
  end
end

hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3