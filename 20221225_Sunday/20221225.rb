# Leetcode: 2391. Longest Subsequence With Limited Sum.
# https://leetcode.com/problems/longest-subsequence-with-limited-sum/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 108 ms, faster than 100.00% of Ruby online submissions for Longest Subsequence With Limited Sum.
# Memory Usage: 211.6 MB, less than 100.00% of Ruby online submissions for Longest Subsequence With Limited Sum.
# 2022.12.25 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
  n,m = nums.size, queries.size
  sn = nums.sort
  q = queries
  sq = q.map.with_index{|v,i| [v,i]}.sort_by(&:first)
  prefix_sum = Array.new(sn.size,0)
  prefix_sum[0] = sn[0]
  (1...sn.size).each do |i|
    prefix_sum[i] = prefix_sum[i-1] + sn[i]
  end
  answer = Array.new(m,0)
  j = 0
  sq.each do |v,i|
    while j < n && prefix_sum[j] <= v
      j += 1
    end
    j -= 1
    answer[i] = j + 1
    j += 1 if -1 == j
  end
  return answer
end
