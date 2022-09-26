# Leetcode: 990. Satisfiability of Equality Equations.
# https://leetcode.com/problems/satisfiability-of-equality-equations/
# @param {String[]} equations
# @return {Boolean}
# Fail: 
# ["c==c","b==d","x!=z"]
def equations_possible(equations)
  require 'set'
  e = equations
  # 1. Create adjacency list.
  hash = {}
  e.select{ |x| "==" == x[1..2]}.each do |x|
    a,b = x[0],x[3]
    hash[a] ||= {a => true}
    hash[b] ||= {b => true}
    hash[a][b] = true
    hash[b][a] = true
  end
  # 2. Get list of chars.
  chars = e.map{|x| [x[0],x[3]]}.flatten.uniq
  # 3. Connected components. 
  # Hash-map for components, node is a key, value is
  # a componennt hash.
  @visited = {}
  @h = hash
  @map = {}
  chars.each do |x|
    next if @visited[x]
    bfs(x,Set.new)
  end
  # 4. Check all '!='.
  e.select{ |x| "!=" == x[1..2]}.each do |x|
    a,b = x[0],x[3]
    return false if @map[a] == @map[b] 
  end
  return true
end

# char to start bfs and a set to create map.
# 1. Create queue, make char wisited.
# 2. Pop, improve set, improve map.
# 3. Loop, reject visited, set visited, push.
def bfs(char, the_set)
  q = [char]
  @visited[char] = true
  while ! q.empty?
    x = q.shift
    the_set.add(x)
    @map[x] = the_set
    @h[x].keys.each do |y|
      next if @visited[y]
      @visited[y] = true
      q.push(y)
    end
  end
end
