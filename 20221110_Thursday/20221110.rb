# Leetcode: 1047. Remove All Adjacent Duplicates In String.
# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 601 ms, faster than 10.71% of Ruby online submissions for Remove All Adjacent Duplicates In String.
# Memory Usage: 219.9 MB, less than 10.71% of Ruby online submissions for Remove All Adjacent Duplicates In String.
# 2022.11.10 Daily Challenge.
# @param {String} s
# @return {String}
def remove_duplicates(s)
  ans = []
  s.chars.each do |c|
    ans.push(c)
    while ans.size >= 2 && ans[-1] == ans[-2]
      ans.pop(2)
    end
  end
  return ans.join
end
