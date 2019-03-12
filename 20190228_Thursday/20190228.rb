p "alias x='ruby 20190228_Thursday/20190228.rb'" 

# Articulation Points (or Cut Vertices) in a Graph.

# https://www.geeksforgeeks.org/articulation-points-or-cut-vertices-in-a-graph/

# Articulation Points (or Cut Vertices) in a Graph

# A vertes in an undirected connceted graph is an atriculation point
# (or cut vertex) if revoming it (and gedges thought it)  disconnects the graph.
# Articulation points represent vulnerabilities in a connected network - single points
# whose failure would split the network into 2 or more disconnected components. They
# are useful for desiging reliable networks.

# For a disconnected undirected graph, an articulation point is a vertex remoting
# which increases number of connected components.

# Following are some example graphs with articulation points encircled with red color.

# How to find all articulation points in a given graph?

# A simple approach is to one by one remove all vertices and see if removal of a
# vertex causes disconnected graph. Following are steps of simple approach of connected graph.

# 1) For evey vertex v, do following
# ... a) Remove v from graph
# ... b) See if the graph remains connected (we can either use BFS of DFS)
# ... c) Add v bach to the graph

# Time complexity of above methods is O(V*(V+E)) for a praph represented using adjacency
# list. Can we do better?

# A O(V+E) algorithm to find all Articulation Points (APs)

# The Idea is ot use DFS (Depth First Search). In DFS, we follow vertices in tree from
# from called DFS tree.  In DFS tree, a vertex u is parent of anater vertex v,
# if v is descovered by u (obviously v is an adjacent of u in graph). 
# in DFS tree, a vertex u is articulation point if one of the following two contions is true

# 1) u is roon of DFS tree and it has at least two children.
# 2) u is not root of DFS tree and it has a  child v such that no vertes in subtree
# rooted with v has a back edge to one of the ancestors (in DFS tree) of of u.

# Following figure shows same points as above with one additional point that a leaf in DFS
# Tree can naver be an articulation point.

# Root node is an articulation if it has more then one child
# Leaf is never an articluation point
# Non-lear, non-root node u is an articulation point
# no non-tree adge goest abouve u from a sub-tre below some child of u
# If remove u dose not sepaate V, there must be an exit from v's subtree via back edge.

# We do DFS traversal of given graph with additional code to find out Articulation Points (APs).
# In DFS traversl, we maintain a parent[] array where parent[u] stores parent of vertex u.
# Among the above mentioned two caces, the first case is simple to detect.
# For every vertex, count children. If currently visited vertes u is root (parent[u] is NIL)
# and has more then two children, print it.

# How to handle second case? the second case is trickier. We mantaion an array disc[] to
# store discomery time of ertices. Fore evey node u, we need to find out the earliest visited
# vertex (the vertex with minimum discovery time) than can be reached from subtree rooted with
# u. So we maintain an additional array low[] whick is defince as  follows.

# low[u] = min(disc[u], disc[w])
# where w is an ancestor of u and there is a back enge from some descentand of u to w.

class Graph
    def initialize(vertices)
        @v = vertices
        @graph = {}
        @time = 0
    end
    def _addEdge(u,v)
        @graph[u].nil? ? @graph[u] = [v] : @graph[u].push(v) 
    end
    def addEdge(u,v)
        _addEdge(u,v)
        _addEdge(v,u)
    end
    # The function to do DFS traverals. It uses recurcive ap_util()
    def ap()
        p "ap"
    end
end

g1 = Graph.new(5)
g1.addEdge(1, 0) 
g1.addEdge(0, 2) 
g1.addEdge(2, 1) 
g1.addEdge(0, 3) 
g1.addEdge(3, 4) 

puts "Articulation points in first graph"
g1.ap()
