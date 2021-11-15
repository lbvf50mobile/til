# Leetcode: 368. Largest Divisible Subset.
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 304 ms, faster than 50.00% of Ruby online submissions for Largest Divisible Subset.
# Memory Usage: 210.5 MB, less than 50.00% of Ruby online submissions for Largest Divisible Subset.
# https://leetcode.com/problems/largest-divisible-subset/
# @param {Integer[]} nums
# @return {Integer[]}
def largest_divisible_subset(nums)
  @n = nums.sort
  @dp_length = Array.new(nums.size)
  @dp_index = Array.new(nums.size)
  @n.size.times{|i| rec(i)}
  index, value = (0...@n.size).to_a
    .zip(@dp_length).max_by{|x| x.last}
  answer = []
  begin
    answer.push(@n[index])
    index = @dp_index[index]
  end while index
  answer
end

def rec(i)
  return @dp_length[i] if @dp_length[i]
  max = 1
  ind = nil
  x = @n[i]
  (i+1...@n.size).each do |j|
    if 0 == @n[j]%x
      ans = rec(j)
      if max < ans + 1
        ind = j
        max = ans + 1
      end
    end
  end
  @dp_length[i] = max
  @dp_index[i] = ind
  max
end
