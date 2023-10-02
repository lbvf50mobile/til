# Leetcode: 2038. Remove Colored Pieces if Both Neighbors are the Same Color.
# https://leetcode.com/problems/remove-colored-pieces-if-both-neighbors-are-the-same-color
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 673 ms, faster than 20.00% of Ruby online submissions for Remove
# Colored Pieces if Both Neighbors are the Same Color.
# Memory Usage: 215.6 MB, less than 100.00% of Ruby online submissions for
# Remove Colored Pieces if Both Neighbors are the Same Color.
# 2023.10.02 Daily Challenge.
# @param {String} colors
# @return {Boolean}
def winner_of_game(colors)
  c = colors
  a = 0
  b = 0
  (1...(colors.size - 1)).each do |i|
    a += 1 if ?A == c[i-1] && ?A == c[i] && ?A == c[i+1]
    b += 1 if ?B == c[i-1] && ?B == c[i] && ?B == c[i+1]
  end
  return a > b
end
