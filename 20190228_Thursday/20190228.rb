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
