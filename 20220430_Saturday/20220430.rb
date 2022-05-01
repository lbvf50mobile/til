# Leetcode: 399. Evaluate Division.
# https://leetcode.com/problems/evaluate-division/
# @param {String[][]} equations
# @param {Float[]} values
# @param {String[][]} queries
# @return {Float[]}
# TLE
def calc_equation(equations, values, queries)
  # Solution based on:
  # https://leetcode.com/problems/evaluate-division/discuss/270993/Python-BFS-and-UF(detailed-explanation)
  @d = false
  @g = {}
  equations.zip(values).each do |((x,y),v)|
    puts "x=#{x},y=#{y},v=#{v}" if @d
    @g[x] ||= {}
    @g[y] ||= {}
    @g[x][y] = v
    @g[y][x] = 1/v
  end
  puts @g.inspect if @d
  queries.map{|src,dst| bfs(src,dst)}
end
def bfs(src, dst)
  puts "src=#{src},dst=#{dst}" if @d
  return -1.0 if !( @g[src] && @g[dst])
  puts @g[src].inspect if @d
  puts @g[dst].inspect if @d
  q = [ [src, 1.0]]
  seen = {}
  q.each do |(x,v)|
    return v if x == dst
    @g[x].keys.each do |y|
      puts "x=#{x},y=#{y},v=#{v},@g[x][y]=#{@g[x][y]}" if @d
      q.push [y, v * @g[x][y]]
    end
  end
  return -1.0
end
