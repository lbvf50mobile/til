# Leetcode: 1446. Consecutive Characters.
# https://leetcode.com/problems/consecutive-characters/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 64 ms, faster than 100.00% of Ruby online submissions for Consecutive Characters.
# Memory Usage: 209.9 MB, less than 100.00% of Ruby online submissions for Consecutive Characters.
# @param {String} s
# @return {Integer}
def max_power(s)
  counter = 1
  answer = 1
  (1...s.size).each do |i|
    if s[i] == s[i-1]
      counter += 1
    else
      counter = 1
    end
    answer = counter if counter > answer
  end
  answer
end
