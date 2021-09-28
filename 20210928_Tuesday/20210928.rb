# Leetcode: 922. Sort Array By Parity II.
# https://leetcode.com/problems/sort-array-by-parity-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/639/week-4-september-22nd-september-28th/3990/
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity_ii(nums)
  even = nums.select(&:even?)
  odd = nums.select(&:odd?)
  even.zip(odd).flatten
end
