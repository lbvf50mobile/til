# Leetcode: 39. Combination Sum.
# https://leetcode.com/problems/combination-sum/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 138 ms, faster than 60.18% of Ruby online submissions for Combination Sum.
# Memory Usage: 211.1 MB, less than 36.28% of Ruby online submissions for Combination Sum.
# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  @d = false
  @c,@t = candidates, target
  @ans = []
  (0...@c.size).each do |i|
    back(i,0,[])
  end
  @ans
end


def back(i,sum,arr)
  # Add.
  # Check.
  # Move.
  return if i >= @c.size
  sum += @c[i]
  arr.push @c[i]
  if @t == sum
    puts "eq #{i}, #{sum}, #{arr.inspect}" if @d
    @ans.push(arr.clone)
    arr.pop
    return
  end
  if @t < sum
    arr.pop
    return
  end
  (i...@c.size).each do |j|
    back(j,sum,arr)
  end
  arr.pop
end
