# Leetcode: 216. Combination Sum III.
# https://leetcode.com/problems/combination-sum-iii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 97 ms, faster than 47.83% of Ruby online submissions for Combination Sum III.
# Memory Usage: 210.9 MB, less than 95.65% of Ruby online submissions for Combination Sum III.
# @param {Integer} k
# @param {Integer} n
# @return {Integer[][]}
def combination_sum3(k, n)
  @k,@n,@ans,@arr = k,n,[],[]
  rec(1,0)
  @ans
end

def rec(start,sum)
  if sum == @n && @arr.size == @k
    @ans.push @arr.clone
    return
  end
  return if @arr.size == @k
  return if sum > @n
  (start..9).each do |el|
    @arr.push el
    sum += el
    rec(el+1, sum)
    @arr.pop
    sum -= el
  end
end

