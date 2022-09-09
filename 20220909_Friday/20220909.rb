# Leetcode: 1996. The Number of Weak Characters in the Game.
# https://leetcode.com/problems/the-number-of-weak-characters-in-the-game/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1569 ms, faster than 100.00% of Ruby online submissions for The Number of Weak Characters in the Game.
# Memory Usage: 225.3 MB, less than 100.00% of Ruby online submissions for The Number of Weak Characters in the Game.
# @param {Integer[][]} properties
# @return {Integer}
def number_of_weak_characters(properties)
  # Based on:
  # https://leetcode.com/problems/the-number-of-weak-characters-in-the-game/discuss/1452696/O(n)
  answer, max = 0, -Float::INFINITY
  # Attack => DECS;
  # Defence => ASC;
  properties.sort{|a,b| a[0] == b[0] ? (a[1] <=> b[1]) : (b[0] <=> a[0])}
    .each do |_,defence|
      answer += 1 if defence < max
      max = [defence,max].max
    end
  answer
end
