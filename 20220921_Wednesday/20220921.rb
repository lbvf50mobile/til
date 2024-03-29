# Leetcode: 985. Sum of Even Numbers After Queries.
# https://leetcode.com/problems/sum-of-even-numbers-after-queries/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 341 ms, faster than 100.00% of Ruby online submissions for Sum of Even Numbers After Queries.
# Memory Usage: 215.1 MB, less than 100.00% of Ruby online submissions for Sum of Even Numbers After Queries.
# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Integer[]}
def sum_even_after_queries(nums, queries)
  @d = false
  @answer = []
  @n, @q = nums, queries
  @sum = nums.map{|x| x.even? ? x : 0 }
  puts "Sum and total." if @d
  p @sum if @d
  total = @sum.sum
  p total if @d
  answer = []
  @q.each_with_index do |(val,i),ii| # Fixed Error: Was (i,v), need (v,i).
    total -= @sum[i]
    puts "New total #{total} after remove #{@sum[i]}." if @d
    @n[i] += val
    @sum[i] = @n[i].even? ? @n[i] : 0
    p @sum if @d
    total += @sum[i]
    puts "Modifed total is #{total} after add #{@sum[i]}." if @d
    answer.push(total)
  end
  answer
end

