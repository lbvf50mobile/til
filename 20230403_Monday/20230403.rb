# Leetcode: 881. Boats to Save People.
# https://leetcode.com/problems/boats-to-save-people/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 167 ms, faster than 25.00% of Ruby online submissions for Boats to
# Save People.
# Memory Usage: 216 MB, less than 100.00% of Ruby online submissions for Boats
# to Save People.
# 2023.04.03 Daily Challenge.
# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}
def num_rescue_boats(people, limit)
  # Based on:
  # https://leetcode.com/problems/boats-to-save-people/solution/
  # !Need to read the description carefully!
  ans = 0
  people.sort!
  i,j = 0, people.size-1
  curr = 0
  while i <= j
    ans += 1
    i += 1 if limit >= people[i] + people[j]
    j -= 1
 end
  return ans
end
