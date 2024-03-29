// Leetcode: 1436. Destination City.
// https://leetcode.com/problems/destination-city
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 80.00% of Go online submissions for Destination
// City.
// Memory Usage: 3.9 MB, less than 44.00% of Go online submissions for
// Destination City.
// 2023.12.15 Daily Challenge.

package main

type city struct {
	in  bool
	out bool
}

func destCity(paths [][]string) string {
	// 1. Create a map.
	mCts := make(map[string]*city)
	// 2. Loop over the input.
	for _, v := range paths {
		outC, inC := v[0], v[1]
		// 3. Create elements in the map, if needs to.
		if _, ok := mCts[outC]; !ok {
			mCts[outC] = &city{}
		}
		if _, ok := mCts[inC]; !ok {
			mCts[inC] = &city{}
		}
		// 4. Mark in/out for the input cites.
		mCts[outC].out = true
		mCts[inC].in = true
	}
	// 5. Search for a false out city.
	for k, v := range mCts {
		if !v.out {
			return k
		}
	}
	panic("Cannot find the end of a path.")
}
