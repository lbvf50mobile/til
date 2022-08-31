# Leetcode: 417. Pacific Atlantic Water Flow.
# https://leetcode.com/problems/pacific-atlantic-water-flow/
# @param {Integer[][]} heights
# @return {Integer[][]}
def pacific_atlantic(heights)
  @h = heights
  # 1 - Pacific.
  # 2 - Atlantic.
  # 0 - Nothing.
  answer = []
  (0...@h.size).each do |i|
    (0...@h[0].size).each do |j|
      @v = get_visited
      @v[i][j] = true
      answer.push([i,j]) if 3 == dfs(i,j,@h[i][j])
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
  val = @h[i][j]
  @v[i][j] = true
  [[i+1,j][i-1,j],[i,j+1],[i,j-1]].each do |ii,jj|
    answer |= dfs(ii,jj,val)
  end
  answer = 0
  return answer
end


