// Leetcode: 374. Guess Number Higher or Lower. 
// https://leetcode.com/problems/guess-number-higher-or-lower/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 38.86% of Go online submissions for Guess Number Higher or Lower.
// Memory Usage: 1.9 MB, less than 88.15% of Go online submissions for Guess Number Higher or Lower.
// 2022.11.16 Daily Challenge.

/** 
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(num int) int;
 */

func guessNumber(n int) int {
  // Errichto: Binary Search tutorial (C++ and Python)
  // https://youtu.be/GU7DpgHINWQ
  l,h := 1, n
  for ; l <= h; {
    m := l + (h-l)/2
    ans := guess(m)
    if 0 == ans { return m}
    if -1 == ans { h = m - 1 }
    if 1 == ans { l = m + 1 }
  }
  return -1
}
