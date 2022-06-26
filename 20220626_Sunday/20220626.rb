# Leetcode: 1423. Maximum Points You Can Obtain from Cards.
# https://leetcode.com/problems/maximum-points-you-can-obtain-from-cards/
# = = = = = = = = = = = = = =
# Accepted.
# Thank You, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 210 ms, faster than 33.33% of Ruby online submissions for Maximum Points You Can Obtain from Cards.
# Memory Usage: 216.2 MB, less than 66.67% of Ruby online submissions for Maximum Points You Can Obtain from Cards.
# @param {Integer[]} card_points
# @param {Integer} k
# @return {Integer}
def max_score(card_points, k)
  return card_points.sum if k >= card_points.size
  sum = card_points.sum
  window_size = card_points.size - k
  window_sum = card_points[0...window_size].sum
  max = sum - window_sum
  (window_size...card_points.size).each do |i|
    value = card_points[i]
    window_sum += value
    window_sum -= card_points[i-window_size]
    tmp = sum - window_sum
    max = tmp if max < tmp 
  end
  max
end
