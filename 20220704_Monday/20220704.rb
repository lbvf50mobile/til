# Leetcode: 135. Candy.
# https://leetcode.com/problems/candy/
# = = = = = = = 
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 183 ms, faster than 27.27% of Ruby online submissions for Candy.
# Memory Usage: 214.9 MB, less than 9.09% of Ruby online submissions for Candy.
# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
  # Based on: 
  # https://leetcode.com/problems/candy/solution/
  left2right = Array.new(ratings.size,1)
  right2left = Array.new(ratings.size,1)
  (1...ratings.size).each do |i|
    if ratings[i] > ratings[i-1]
      left2right[i] = left2right[i-1] + 1
    end
  end
  (0...ratings.size-1).reverse_each do |i|
    if ratings[i] > ratings[i+1]
      right2left[i] = right2left[i+1] + 1
    end
  end
  sum = 0
  (0...ratings.size).each do |i|
    sum += max(left2right[i], right2left[i])
  end
  return sum
end

def max(a,b)
  a > b ? a : b
end
