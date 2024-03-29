# Leetcode: 744. Find Smallest Letter Greater Than Target.
# https://leetcode.com/problems/find-smallest-letter-greater-than-target/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 103 ms, faster than 23.08% of Ruby online submissions for Find
# Smallest Letter Greater Than Target.
# Memory Usage: 212.4 MB, less than 23.08% of Ruby online submissions for Find
# Smallest Letter Greater Than Target.
# 2023.06.09 Daily Challenge.
# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  first = letters.first
  tmp  = letters.select{|x| x > target}
  if tmp.empty?
    first
  else
    tmp.first
  end
end
