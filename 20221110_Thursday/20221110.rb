# Leetcode: 1047. Remove All Adjacent Duplicates In String.
# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 474 ms, faster than 53.57% of Ruby online submissions for Remove All Adjacent Duplicates In String.
# Memory Usage: 218.5 MB, less than 10.71% of Ruby online submissions for Remove All Adjacent Duplicates In String.
# 2022.11.10 Daily Challenge.
# @param {String} s
# @return {String}
def remove_duplicates(s)
  ans = []
  s.chars.each do |c|
    # No need to push.
    # It is possible to compare.
    if ans.last == c
      ans.pop
    else
      ans.push(c)
    end
  end
  return ans.join
end
