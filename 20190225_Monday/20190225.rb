p "alias x='ruby 20190225_Monday/20190225.rb'" 

# https://www.geeksforgeeks.org/bridge-in-a-graph/

# Bridges in a graph

# An edgein an andirected conncted graph is a bridge if removing it disconnects the graph.
# For a disconnecte undirected graph, definition is similar, a bridge is an edge removing which
# increases number of disconnected components.

# Like Articluation Points, bridges represents vulnerabilities in a connected network and are
# userful for desigining reliable networks.
# For example, in a wired computed network, an articulation point indicated the critical computers
# and a bridge indicates the critical wires or connections.

# How to find all bridges in a givern graph?

#  A simple approach is to one by one remove all edges and see if remova of a enge causes
# disconnected graph. Following are steps of simple approach for connected graph.
# Folowwing are steps of simplw approach fo connected graph.

# Fo every edge (u,v), do following
# - a) remove (u,v) from graph
# - b) See if the gpagh remains conncted (we can either use BFS of DFS)
# - c) Add (u,v) bacl to the graph.

# Tim complexity of abmove methos is O(E*(V+E)) for a graph represented using adjacency list.
# Can we do better?

# A O(V+E) algorithm to fin all Bridges.

# The idea is similar to O(V+E) algorithm for Articulation Points. We do DFS traversal
# of the given graph.  In DFS tree an endge (u,v) (u is parent of  v in DFS tree)
# is bridge if there dose not exists any other alternative to reach u or an ancestor of u
# from the subtree rooted with v.  As discussed in the previewos post 
# (https://www.geeksforgeeks.org/articulation-points-or-cut-vertices-in-a-graph/)
# The condition of an endge (u,b) to be a bridge is, "low[v] > disc[u]"

class Graph
  def initialize(size)
    @V = size
    @graph = {}
    @time = 0
    @answer = []
  end  
  def _add(u,v)
    @graph[u].nil? ? @graph[u] = [v] : @graph[u].push(v)
  end
  def addEdge(u,v)
    _add(u,v)
    _add(v,u)
  end
  def inspect
    @graph.to_s
  end

  def bridgeUtil(u,visited, parent, low, disc)
    visited[u] = true
    disc[u] = @time
    low[u] = @time
    @time += 1
    @graph[u].each do |v|
      if(visited[v].nil?)
          parent[v] = u
          bridgeUtil(v, visited, parent, low, disc)
          low[u] = [low[u], low[v]].min
            if low[v] > disc[u]
              @answer.push([u,v])
            end
      elsif v != parent[u]
        low[u] = [low[u], disc[v]].min
      end
    end
  end

  # DFS based function to find all bridges.
  # It uses recusive function bridgeUntil()
  def bridge
      visited = {}
      disc = [Float::INFINITY] * @V
      low = [Float::INFINITY] * @V
      parent = [-1] * @V
      (0...@V).each{|u|
        bridgeUtil(u, visited, parent, low, disc)
      }
      @answer

  end

end

g1 = Graph.new(5)
g1.addEdge(1, 0) 
g1.addEdge(0, 2) 
g1.addEdge(2, 1) 
g1.addEdge(0, 3) 
g1.addEdge(3, 4) 

p g1.bridge()