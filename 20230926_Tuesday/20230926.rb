# Leetcode: 316. Remove Duplicate Letters.
# https://leetcode.com/problems/remove-duplicate-letters/?envType=daily-question&envId=2023-09-26
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 83 ms, faster than 100.00% of Ruby online submissions for Remove
# Duplicate Letters.
# Memory Usage: 212.1 MB, less than 100.00% of Ruby online submissions for
# Remove Duplicate Letters.
# 2023.09.26 Daily Challenge.
# @param {String} s
# @return {String}
require "set"
def remove_duplicate_letters(s)
  # Based on:
  # https://leetcode.com/problems/remove-duplicate-letters/discuss/890696/Step-by-Step-Monotonic-Stack-O(N)-Python-solution
  st = []
  taken = Set.new([])
  count = s.chars.tally
  count.default = 0
  s.chars.each do |c|
    if ! taken.include?(c)
      while (!st.empty?) && st[-1] > c && count[st[-1]] > 0
        x = st.pop
        taken.delete(x)
      end
      st.push(c)
      taken.add(c)
    end
    count[c] -= 1
  end
  st.join
end
