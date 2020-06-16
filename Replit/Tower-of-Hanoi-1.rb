# Tower of Hanoi 1

# In this challenge, you need to move 2 disks from any starting peg to any goal peg.
 
# You will be given two numbers (from 1 to 3) as input - the starting  peg, and the goal peg. Write a function that calculates how to move 2  disks from the starting peg to the goal peg. Return a string with all the steps.

# https://repl.it/student/submissions/10396676

def move(starting, goal)
  spare = get_spare(starting, goal)
  return "#{starting}->#{spare} #{starting}->#{goal} #{spare}->#{goal}"
end

def get_spare(s, g)
  return 1 if s + g == 5
  return 2 if s + g == 4
  return 3 if s + g == 3
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3