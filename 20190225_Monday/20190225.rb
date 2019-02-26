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