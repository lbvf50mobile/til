# Leetcode: 1187. Make Array Strictly Increasing. 
# https://leetcode.com/problems/make-array-strictly-increasing/
# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer}
def make_array_increasing(arr1, arr2)
  # Based on:
  # https://leetcode.com/problems/make-array-strictly-increasing/solution/
  dp = {}
  dp[-1] = 0
  arr2.sort!
  n = arr2.size
  (0...arr1.size).each do |i|
    ndp = {}
    ndp.defalut = Float::INFINITY
    dp.values.each do |prv|
      if arr1[i] > prv
        ndp[arr1[i]] = [ndp[arr1[i]],dp[prv]].min
      end
    end
    dp = ndp
  end

  if dp.empty?
    return -1
  else
    dp.values.min
  end
end
