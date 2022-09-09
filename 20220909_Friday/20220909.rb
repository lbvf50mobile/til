# Leetcode: 1996. The Number of Weak Characters in the Game.
# https://leetcode.com/problems/the-number-of-weak-characters-in-the-game/
# @param {Integer[][]} properties
# @return {Integer}
# [[1,1],[2,1],[2,2],[1,2]]
# error
def number_of_weak_characters(properties)
  # Based on:
  # https://leetcode.com/problems/the-number-of-weak-characters-in-the-game/discuss/1452696/O(n)
  answer, max = 0, -Float::INFINITY
  properties.sort{|a,b| a[0] <=> b[0]}
    .reverse
    .each do |_,defence|
      answer += 1 if defence < max
      max = [defence,max].max
    end
  answer
end
