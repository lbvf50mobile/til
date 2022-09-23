# Leetcode: 1680. Concatenation of Consecutive Binary Numbers.
# https://leetcode.com/problems/concatenation-of-consecutive-binary-numbers/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2685 ms, faster than 100.00% of Ruby online submissions for Concatenation of Consecutive Binary Numbers.
# Memory Usage: 211 MB, less than 100.00% of Ruby online submissions for Concatenation of Consecutive Binary Numbers.
# @param {Integer} n
# @return {Integer}
def concatenated_binary(n)
  # The code is based on:
  # https://leetcode.com/problems/concatenation-of-consecutive-binary-numbers/discuss/2612407/C%2B%2B-or-Diagram-or-Related-Problems
  ans, mod = 0, (10**9) + 7
  (1..n).each do |i|
    len = len(i)
    ans = ((ans << len)%mod + i)%mod
  end
  ans
end

def len(x)
  Math.log2(x).to_i + 1
end
