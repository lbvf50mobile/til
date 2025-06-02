// Leetcode: 2929. Distribute Candies Among Children II
// https://leetcode.com/problems/distribute-candies-among-children-ii/description/?envType=daily-question&envId=2025-06-01
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Crhist!
// = = = = = = = = = = = = = =
package main

func distributeCandies(n int, limit int) int64 {
	var ans int64
	var a int64
	lim := int64(limit)
	nn := int64(n)

	for a = 0; a <= min(lim, nn); a += 1 {
		if int64(n)-a > int64(limit)*2 {
			continue
		}
		theMin := max(0, nn-a-lim)
		theMax := min(lim, nn-a)
		ans += theMax - theMin + 1

	}
	return ans
}
