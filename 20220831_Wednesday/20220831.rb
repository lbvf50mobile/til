# Leetcode: 417. Pacific Atlantic Water Flow.
# https://leetcode.com/problems/pacific-atlantic-water-flow/
# @param {Integer[][]} heights
# @return {Integer[][]}
# TLE.
def pacific_atlantic(heights)
  @h = heights
  @d = true
  @dp = Array.new(@h.size).map{ Array.new(@h[0].size,false)}
  # 1 - Pacific.
  # 2 - Atlantic.
  # 0 - Nothing.
  # 3 = (1|2) Both.
  answer = []
  (0...@h.size).each do |i|
    (0...@h[0].size).each do |j|
      if @dp[i][j]
        tmp = @dp[i][j]
      else
        @v = get_visited
        tmp = dfs(i,j, Float::INFINITY) # Water come frome the sky. 
        @dp[i][j] = tmp
      end
      answer.push([i,j]) if 3 == tmp 
    end
  end
  return answer
end

def get_visited
  Array.new(@h.size).map{ Array.new(@h[0].size,false)}
end

def dfs(i,j,value)
  return 1 if 0 > i
  return 1 if 0 > j
  return 2 if i == @h.size
  return 2 if j == @h[0].size
  return 0 if @h[i][j] > value
  return 0 if @v[i][j]
  return @dp[i][j] if @dp[i][j]
  val = @h[i][j]
  answer = 0
  @v[i][j] = true
  [[i+1,j],[i-1,j],[i,j+1],[i,j-1]].each do |ii,jj|
    answer |= dfs(ii,jj,val)
  end
  return answer
end


