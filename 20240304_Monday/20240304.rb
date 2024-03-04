# Leetcode: 948. Bag of Tokens.
# https://leetcode.com/problems/bag-of-tokens/
# @param {Integer[]} tokens
# @param {Integer} power
# @return {Integer}
def bag_of_tokens_score(tokens, power)
  tokens.sort!
  l,h = 0, tokens.size - 1
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
