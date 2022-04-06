# Leetcode: 923. 3Sum With Multiplicity.
# https://leetcode.com/problems/3sum-with-multiplicity/
# @param {Integer[]} arr
# @param {Integer} target
# @return {Integer}
# TLE.
def three_sum_multi(arr, target)
  arr.sort!
  ans = 0
  n = arr.size
  counter = {}
  # i changes in 0...n-2 interval.
  (0...n-2).each do |i|
    a = arr[i]
    counter.clear
    counter[arr[i+1]] = 1
    # k changes in i+2...n interval.
    (i+2...n).each do |k|
      c = arr[k]
      break if target < a + c
      # Find number of b by the hash map counter.
      # a + b + c = target; b = target - (a+c);
      b = target - (a+c)
      ans += counter[b] if counter[b]
      counter[c] ||= 0
      counter[c] += 1
    end
  end
  return ans % (10**9 + 7)
end
