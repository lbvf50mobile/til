# Leetcode: 948. Bag of Tokens.
# https://leetcode.com/problems/bag-of-tokens/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 164 ms, faster than 100.00% of Ruby online submissions for Bag of Tokens.
# Memory Usage: 211.2 MB, less than 100.00% of Ruby online submissions for Bag of Tokens.
# @param {Integer[]} tokens
# @param {Integer} power
# @return {Integer}
def bag_of_tokens_score(tokens, power)
  # Based on the Leetcode's soltuion.
  tokens.sort!
  l,h = 0, tokens.size - 1 # Error here. Forgot to add -1.
  t = tokens
  ans, pnts = 0, 0
  while l <= h && (power >= t[l] || pnts > 0 )
    while (l <= h) && (power >= t[l])
      power -= t[l]
      pnts += 1
      l += 1
    end
    ans = [ans,pnts].max
    if (l <= h) && (pnts > 0)
      power += t[h]
      h -= 1
      pnts -= 1
    end
  end
  ans
end
