// Leetcode: 875. Koko Eating Bananas.
// https://leetcode.com/problems/koko-eating-bananas/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 48 ms, faster than 52.76% of Go online submissions for Koko Eating Bananas.
// Memory Usage: 7.3 MB, less than 19.77% of Go online submissions for Koko Eating Bananas.
// 2023.03.16 Updated.
var arr []int
var total_time int

func minEatingSpeed(piles []int, h int) int {
	arr, total_time = piles, h
	l, r := 1, maxEl()
	for l <= r {
		m := l + (r-l)/2
		if enough(m) {
			r = m - 1
		} else {
			l = m + 1
		}
	}
	return l
}
func enough(speed int) bool {
	t := 0
	for _, x := range arr {
		t += x / speed
		// Some unfinished banans.
		if 0 != x%speed {
			t += 1
		}
	}
	return t <= total_time
}
func maxEl() int {
	x := arr[0]
	for _, y := range arr {
		if y > x {
			x = y
		}
	}
	return x
}
