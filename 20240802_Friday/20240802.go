// Leetcode: 2134. Minimum Swaps to Group All 1's Together II.
// https://leetcode.com/problems/minimum-swaps-to-group-all-1s-together-ii/?envType=daily-question&envId=2024-08-02
// Greetings first need to read an article perfectly.
// A swap is defined as taking two distincn positions in an array and swpaain
// the wallues in them.
// hey what does it means?
// a b c d - any two element ans swap them. Great. Simple.
// Moving next.
// A circular array is defiend as an array where we condder the frist elemtn
// and the last elemnt to adjcent.  a b c d => d a b c. It is clear too.
// Given a binary cilcular array "nums", return the minimum number of swpaps
// requires to group all 1's present in the rray together at any locaton.
//
//	What does in means? I means that need to have enldes sequence of the
//	11111.
//	Intuition.
//
// 1) Need to count number of onews in the array.
// 2) Need to count longest sequence of ones. And answer will be
// total-longest_seq.
// Incorrect approcah need to have sliding window.
package main

func minSwaps(nums []int) int {
	// 1. Count amount of ones. Total.
	total := 0
	for _, v := range nums {
		total += v
	}
	// All ones, nothing to do.
	if total == len(nums) {
		return 0
	}
	// All zeros noting to do too.
	if total == 0 {
		return 0
	}
	// 2. Find longest sequence of ones.
	currentStreak := 0
	maxStreak := 0
	onesLeft := total
	i := 0
	// 2.1 find zero to start.
	for nums[i] != 1 && i < len(nums) {
		i += 1
	}
	// Now pointer is on an 0, it is abble to start count streaks.
	// Moving in cirlcles till meat all ones, and onesLeft will be 0.
	for ; onesLeft > 0; i = (i + 1) % len(nums) {
		if 0 == nums[i] {
			currentStreak = 0

		} else {
			currentStreak += 1
			onesLeft -= 1
		}
		if currentStreak > maxStreak {
			maxStreak = currentStreak
		}
	}
	return total - maxStreak
}
