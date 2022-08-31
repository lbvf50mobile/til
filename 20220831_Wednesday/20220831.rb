# Leetcode: 417. Pacific Atlantic Water Flow.
# https://leetcode.com/problems/pacific-atlantic-water-flow/
# @param {Integer[][]} heights
# @return {Integer[][]}
# TLE.
def pacific_atlantic(heights)
  @h = heights
  @d = true
  # 1 - Pacific.
  # 2 - Atlantic.
  # 0 - Nothing.
  # 3 = (1|2) Both.
  answer = []
  (0...@h.size).each do |i|
    (0...@h[0].size).each do |j|
      @v = get_visited
      # @v[i][j] = true # Error always break here.
      # Because in DFS. Reject visited places.
      # Error here. Instad of Infinity pass curent value.
      # Always return 0.
      tmp = dfs(i,j, Float::INFINITY) # Water come frome the sky. 
      # The sky is a hightes point.
      # p [i,j,tmp] if @d
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
  # p [i,j,value, "dfs"] if @d
  val = @h[i][j]
  answer = 0
  @v[i][j] = true
  # Here forget a comma. Error.
  [[i+1,j],[i-1,j],[i,j+1],[i,j-1]].each do |ii,jj|
    # p [ii,jj,val, "dfs loop"] if @d
    answer |= dfs(ii,jj,val)
  end
  # answer = 0 # One more error. Always 0.
  return answer
end


