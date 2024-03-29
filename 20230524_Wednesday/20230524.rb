# Leetcode: 2542. Maximum Subsequence Score.
# https://leetcode.com/problems/maximum-subsequence-score/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
# TLE.
def max_score(nums1, nums2, k)
  # Based on:
  # https://leetcode.com/problems/maximum-subsequence-score/solution/
  prs = nums1.zip(nums2).sort_by{|x| -x[1]}
  tkh = prs[0...k].map(&:first).sort
  sum = tkh.sum
  ans = sum * prs[k-1][1]
  (k...nums1.size).each do |i|
    x = tkh.shift
    sum -= x
    sum += prs[i][0]
    tkh.push(prs[i][0])
    tkh.sort!
    ans = [ans,sum * prs[i][1]].max
  end
  return ans
end
