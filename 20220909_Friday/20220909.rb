# Leetcode: 1996. The Number of Weak Characters in the Game.
# https://leetcode.com/problems/the-number-of-weak-characters-in-the-game/
# @param {Integer[][]} properties
# @return {Integer}
def number_of_weak_characters(properties)
  pr = properties.sort{|a,b| compare(a,b)}
  groups = [1]
  (1...pr.size).each do |j|
    a = pr[j-1]
    b = pr[j]
    if -1 == compare(a,b)
      groups.push(1) 
    else
      groups[groups.size-1] += 1
    end
  end
  groups[0...-1].sum
end

def compare(a,b)
  if a[0] > b[0] && a[1] > b[1]
    1
  elsif b[0] > a[0] && b[1] > a[1]
    -1
  else
    0
  end
end
