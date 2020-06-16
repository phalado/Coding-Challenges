# Transposition

# A Transposition Error is when two letters are swapped, such as in "hte" instead of "the", or "rign" instead of "ring".
# Given a string of characters, can you fix every place where "gn"  appears so it becomes "ng" instead? If there are multiple "g"s in a row,  the "n" should be swapped with the first "g". No "gn" should appear in  the final text, so be careful with all possibilities!

# https://repl.it/student/submissions/10261289

def transpose(string)
  (0..string.length).each do |i|
    if string[i] == 'n' and string[i - 1] == 'g'
      j = i - 1
      while string[j] == 'g'
        string[j] = 'n'
        string[j + 1] = 'g'
        j -= 1
      end
    end
  end
  return string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg