# Leetcode: 990. Satisfiability of Equality Equations.
# https://leetcode.com/problems/satisfiability-of-equality-equations/
# @param {String[]} equations
# @return {Boolean}
def equations_possible(equations)
  require 'set'
  e = equations
  # First iterate over all == and set relations.
  hash = {}
  e.select{ |x| "==" == x[1..2]}.each do |x|
    a,b = x[0],x[3]
    hash[a] ||= {a => true}
    hash[b] ||= {b => true}
    hash[a][b] = true
    hash[b][a] = true
  end
  # Now create connected components.
  # First get all chars.
  chars = e.map{|x| [x[0],x[3]]}.flatten.uniq
  @visited = {}
  @h = hash
  @map = {}
  chars.each do |x|
    next if @visited[x]
  end

    
end

def bfs(char, the_set)
  q = [char]
  @visited[char] = true
  while ! q.empty?
    x = q.shift
    the_set.add(x)

  end
end
