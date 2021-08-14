# Leetcode: 546. Remove Boxes.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/614/week-2-august-8th-august-14th/3889/
# https://leetcode.com/problems/remove-boxes/
# https://github.com/Seanforfun/Algorithm-and-Leetcode/blob/master/leetcode/546.%20Remove%20Boxes.md
# https://leetcode.com/problems/remove-boxes/discuss/1402639/Java-Explanation-with-Illustration
# @param {Integer[]} boxes
# @return {Integer}
def remove_boxes(boxes)
  @bx = boxes
  @dp = Array.new(@bx.size).map{ Array.new(@bx.size).map{ Array.new(@bx.size,0)}}
  return dfs(0,@bx.size-1,0)
end

def dfs(i,j,k)
  return 0 if i > j
  return @dp[i][j][k] if @dp[i][j][k] > 0
  @dp[i][j][k] = dfs(i,j-1,0) + (k+1)*(k+1)
  (i...j).each do |pointer|
    if @bx[i] == @bx[pointer]
      @dp[i][j][k] = [@dp[i][j][k],dfs(i,pointer,k+1)+dfs(pointer+1,j-1,0)].max 
    end
  end
  return @dp[i][j][k]
end
