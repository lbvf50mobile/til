# Leetcode: 446. Arithmetic Slices II - Subsequence.
# https://leetcode.com/problems/arithmetic-slices-ii-subsequence/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/637/week-2-september-8th-september-14th/3970/
# @param {Integer[]} nums
# @return {Integer}
def number_of_arithmetic_slices(nums)
  # https://leetcode.com/problems/arithmetic-slices-ii-subsequence/solution/
  n = nums.size
  ans = 0
  cnt = Array.new(n)
  (0...n).each do |i|
    cnt[i] = {}
    cnt[i].default = 0
    (0...i).each do |j|
      delta = nums[i] - nums[j]
      next if ! delta.between?(-2147483648, 2147483647)
      sum = cnt[j][delta]
      origin = cnt[i][delta]
      cnt[i][delta] = origin + sum + 1
      ans += sum
    end
  end
  ans
end
