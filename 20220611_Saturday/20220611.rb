# Leetcode: 1658. Minimum Operations to Reduce X to Zero.
# https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/
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
  if 
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

