# Leetcode: 985. Sum of Even Numbers After Queries.
# https://leetcode.com/problems/sum-of-even-numbers-after-queries/
# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Integer[]}
def sum_even_after_queries(nums, queries)
  @answer = []
  @n, @q = nums, queries
  @sum = nums.map{|x| x.to_s.chars.map(&:to_i).select(&:even?).sum}
  total = @sum.sum
  @q.each_with_index do |(i,val),ii|
    total -= @sum[i]
    @n[i] += val
    @sum[i] = @n[i].to_s.chars.map(&:to_i).select(&:even?).sum
    total += @sum[i]
  end
  return @sum 
end

