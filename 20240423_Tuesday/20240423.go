// Leetcode: 310. Minimum Height Trees.
// https://leetcode.com/problems/minimum-height-trees/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 104 ms, faster than 38.61% of Go online submissions for Minimum
// Height Trees.
// Memory Usage: 18.5 MB, less than 5.94% of Go online submissions for Minimum
// Height Trees.
// 2024.04.24 Updated.
// 2024.04.23 Daily Challange.

package main

// Adjacency List type, need to have map wit maps, to implement map of sets.
type ajList map[int]map[int]bool

// Struct that stores information about the task.
type mhTrees struct {
	n           int     // Size of the graph.
	edgs        [][]int // Edges from the input
	al          ajList  // Adjacency List.
	parents     []int   // Parents of a tree representation of the graph.
	distances   []int   // Dinstances from the root.
	longestPath []int   // Path to extract an answer.
	ans         []int   // The answer itself.
}

func findMinHeightTrees(n int, edges [][]int) []int {
	tsk := mhTreesFactory(n, edges)
	// Find farthest leaf from the tree when root is 0.
	border1 := tsk.findFarthestLeaf(0)
	// Find farthest leaf for the tree when root is Border1.
	border2 := tsk.findFarthestLeaf(border1)
	// Because of parents slice, build path from Border2=>Border1.
	tsk.buildPath(border2)
	// Get middle of that path.
	return tsk.findMiddle()
}

func mhTreesFactory(n int, edges [][]int) *mhTrees {
	edgs := edges
	al := makeAjList(edgs)
	parents := make([]int, n)
	distances := make([]int, n)
	longestPath := make([]int, 0, n)
	ans := make([]int, 0, 2)
	mht := mhTrees{
		n:           n,
		edgs:        edgs,
		al:          al,
		parents:     parents,
		distances:   distances,
		longestPath: longestPath,
		ans:         ans,
	}
	mht.resetParentsAndDist()
	return &mht
}

// Save parents, depth, use depth as visited marker.
// i - current index of a vertex.
// pI - parent's index.
// depth - distance.
func (mt *mhTrees) dfs(i, pI, depth int) {
	mt.parents[i] = pI
	mt.distances[i] = depth
	for k, _ := range mt.al[i] {
		// -1 means unvisited.
		if -1 == mt.distances[k] {
			mt.dfs(k, i, depth+1)
		}
	}
}

// Returns index of the farthes leaf's index.
func (mt *mhTrees) findFarthestLeaf(root int) int {
	mt.resetParentsAndDist()
	mt.dfs(root, -1, 0)
	ans, max := 0, mt.distances[0]
	for i, v := range mt.distances {
		if max < v {
			ans = i
			max = v
		}
	}
	return ans
}
func (mt *mhTrees) buildPath(leaf int) {
	for -1 != leaf {
		mt.longestPath = append(mt.longestPath, leaf)
		leaf = mt.parents[leaf]
	}
}
func (mt *mhTrees) findMiddle() []int {
	size := len(mt.longestPath)
	hlf := size / 2
	if 0 == size%2 {
		a := mt.longestPath[hlf]
		b := mt.longestPath[hlf-1]
		mt.ans = []int{a, b} // Here return indices instead of values.
	} else {
		a := mt.longestPath[hlf]
		mt.ans = []int{a} // Here, return indices instead of values.
	}
	return mt.ans
}

func (mt mhTrees) resetParentsAndDist() {
	for i, _ := range mt.parents {
		mt.parents[i] = -1
	}
	for i, _ := range mt.distances {
		mt.distances[i] = -1
	}
}

func makeAjList(edgs [][]int) ajList {
	al := make(ajList)
	for _, v := range edgs {
		a, b := v[0], v[1]
		aMap, aOk := al[a]
		bMap, bOk := al[b]
		if !aOk {
			al[a] = make(map[int]bool)
			aMap = al[a]
		}
		if !bOk {
			al[b] = make(map[int]bool)
			bMap = al[b]
		}
		aMap[b] = true
		bMap[a] = true
	}
	return al
}
