# Leetcode: 417. Pacific Atlantic Water Flow.
# https://leetcode.com/problems/pacific-atlantic-water-flow/
# = = = = = = = = = = = = = =
# Accepted. 
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 188 ms, faster than 78.00% of Ruby online submissions for Pacific Atlantic Water Flow.
# Memory Usage: 213.5 MB, less than 20.00% of Ruby online submissions for Pacific Atlantic Water Flow.
# @param {Integer[][]} heights
# @return {Integer[][]}
def pacific_atlantic(heights)
  @h = heights
  @d = false
  require 'set'
  pacific_set = Set.new([])
  set = pacific_set
  @used = get_used
  puts "Empty Pasific Left side:" if @d
  print_set(set) if @d
  # Left side.
  (0...@h.size).each do |i|
    dfs(i,0,set)
    p [i,0] if @d
    print_set(set) if @d
  end
  # Top.
  puts "Pasific Top:" if @d
  (0...@h[0].size).each do |j| # Error was here. Incorect range.
    dfs(0,j,set)
    p [0,j] if @d
    print_set(set) if @d
  end
  atlantic_set = Set.new([])
  set = atlantic_set
  @used = get_used
  # Right side.
  (0...@h.size).each do |i|
    dfs(i,@h[0].size-1,set)
  end
  # Bottom.
  (0...@h[0].size).each do |j| # Copied error. Icorrect range.
    dfs(@h.size-1,j,set)
  end
  (pacific_set & atlantic_set).to_a
end

def get_used
  Array.new(@h.size).map{ Array.new(@h[0].size,false)}
end

def inside(i,j)
  i.between?(0,@h.size-1) && j.between?(0,@h[0].size-1)
end

def dfs(i,j,set)
  @used[i][j] = true
  set.add([i,j])
  [
    [i+1,j],
    [i-1,j],
    [i,j+1],
    [i,j-1]
  ].each do |ii,jj|
    next if ! inside(ii,jj)
    next if @used[ii][jj] # Error was here, incorrect NOT. Fixed.
    next if @h[i][j] > @h[ii][jj] # Moving UP only!
    dfs(ii,jj,set)
  end
end

def print_set(set)
  field = Array.new(@h.size).map{ Array.new(@h[0].size,?.)}
  set.to_a.each do |i,j|
    field[i][j] = @h[i][j].to_s
  end
  field.map{|x| x.join(" ")}.each{|row| puts row}
end
