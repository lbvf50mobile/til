# Leetcode: 1658. Minimum Operations to Reduce X to Zero.
# https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1110 ms, faster than 50.00% of Ruby online submissions for Minimum Operations to Reduce X to Zero.
# Memory Usage: 264.7 MB, less than 50.00% of Ruby online submissions for Minimum Operations to Reduce X to Zero.
# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums, x)
  return 1 if nums.first == x || nums.last == x
  @lr = nums.clone
  @hsh = {}
  @ans = []
  @hsh[0] = nums[0]
  (1...nums.size).each do |i|
    @lr[i] += @lr[i-1]
    n = @lr[i]
    # Hey instead of BinarySearc
    # a Hash map could be used.
    if @hsh[n].nil?
      @hsh[n] = i
    end
    if x == n 
      @ans.push(i+1)
    end
  end
  n = nums.last
  if @hsh[x-n] && @hsh[x-n] < nums.size-1  
    @ans.push(1 + @hsh[x-n] + 1)
  end
  @rl = nums.clone
  (0...(nums.size-1)).reverse_each do |j|
    @rl[j] += @rl[j+1]
    n = @rl[j]
    if x == n
      @ans.push(nums.size - j)
    end
    if @hsh[x-n] && j > @hsh[x-n]
      @ans.push(@hsh[x-n] + 1 + nums.size - j)
    end
  end
  @ans.empty? ? -1 : @ans.min
end

