# Leetcode: 877. Stone Game.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3870/
# Accepted.
# Thanks God!
# @param {Integer[]} piles
# @return {Boolean}
def stone_game(piles)
  @pls = piles
  @prfx = prefix_array(@pls)
  @dp = Array.new(@pls.size).map{ Array.new(@pls.size)}
  sum = get_sum(0,@pls.size-1)
  first_get = dp(0,@pls.size-1)
  second_get = sum - first_get
  first_get > second_get
end


def dp(i,j)
  return @pls[i] if i == j
  return @dp[i][j] if @dp[i][j]
  sum = get_sum(i,j)
  left = dp(i+1,j) # how many stones enemy get if take left.
  right = dp(i,j-1) # how many stones enemy get if take right.
  max = sum - left 
  max = sum - right if max < (sum - right)
  @dp[i][j] = max
  max
end

def prefix_array(x)
  ans = x.clone
  (1...ans.size).each do |i|
    ans[i] += ans[i-1]
  end
  ans
end

def get_sum(i,j)
  prev = 0
  prev = @prfx[i-1] if i > 0
  @prfx[j] - prev
end

