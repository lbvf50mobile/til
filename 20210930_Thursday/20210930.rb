# Leetcode: 698. Partition to K Equal Sum Subsets.
# https://leetcode.com/problems/partition-to-k-equal-sum-subsets/
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/640/week-5-september-29th-september-30th/3993/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def can_partition_k_subsets(nums, k)
  sum = nums.sum
  return true if 1 == k
  return false if 0 != sum%k
  @k,@chunk = k, sum/k
  @n = nums
  return false if @n.any?{|x| x > @chunk} 

  p "Greetings chunk is #{@chunk}"
  @used = Array.new(nums.size,false)
  @used[0] = true
  @reached = false

  rec(@n,0)

  @reached
end


def rec(sum,step)
  # Calculate current sum, check state.
  return if @reached
  # Check do reach a new step.
  new_step = @chunk * (step+1)
  return if sum > new_step # Jump over a step.
  if new_step == sum # Reach a step.
    step += 1
    # Now need to check do the aim reached.
    if @used.all? && @k = step
      @reached = true
      return
    end
  end

  
  # Call next.
  (0...@n.size).each do |i|
    if ! @used[i]
      @used[i] = true
      sum += @n[i]
      rec(sum, step)
      sum -= @n[i]
      @uesd[i] = false
    end
  end
end

