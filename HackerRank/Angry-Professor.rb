# Angry Professor

# A Discrete Mathematics professor has a class of students. Frustrated with their lack of discipline, he decides to cancel class if fewer than some number of students are present when class starts. Arrival times go from on time () to arrived late ().

# Given the arrival time of each student and a threshhold number of attendees, determine if the class is canceled.

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/angry-professor

def angryProfessor(k, a)
    sum  = 0
    a.each do |i|
        sum += 1 if i <= 0    
    end
    return 'YES' if sum < k
    return 'NO'
end