# Leetcode: 17. Letter Combinations of a Phone Number.
# https://leetcode.com/problems/letter-combinations-of-a-phone-number/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 74 ms, faster than 81.82% of Ruby online submissions for Letter
# Combinations of a Phone Number.
# Memory Usage: 211 MB, less than 66.67% of Ruby online submissions for Letter
# Combinations of a Phone Number.
# 2023.08.03 Daily Challenge.
# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?
  @dts = digits.chars.map(&:to_i)
  @data = [
    [],
    [],
    [?a, ?b, ?c],
    [?d, ?e, ?f],
    [?g, ?h, ?i],
    [?j, ?k, ?l],
    [?m, ?n, ?o],
    [?p, ?q, ?r, ?s],
    [?t, ?u, ?v],
    [?w,?x,?y,?z]
  ]
  @ans = []
  @row = []
  dfs(0)
  return @ans
end

def dfs(i)
  if @dts.size == i
    @ans.push(@row.join)
    return
  end
  x = @dts[i]
  @data[x].each do |chr|
    @row.push(chr)
    dfs(i+1)
    @row.pop()
  end
end
