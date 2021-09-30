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

  # p "Greetings chunk is #{@chunk}"
  @all = 2**(@n.size) - 1
  used = 1
  @dp = {}
  return rec(@n[0],0,used)
end


def rec(sum,step,used)
  return @dp[sum][step][used] if @dp[sum] && @dp[step] && (!@dp[used].nil?)
  @dp[sum] ||= {}
  @dp[sum][step] ||= {}
  # Check do reach a new step.
  new_step = @chunk * (step+1)
  if sum > new_step # Jump over a step.
    @dp[sum][step][used] = false
    return false
  end
  if new_step == sum # Reach a step.
    step += 1
    @dp[sum][step] ||={}
    # Now need to check do the aim reached.
    if @all == used && @k == step
      @dp[sum][step][used] = true
      return true
    end
  end
  # Call next.
  (0...@n.size).each do |i|
    bit = (1<<i)
    if 0 == (used & bit) 
      used |= bit
      sum += @n[i]
      ans = rec(sum, step,used)
      if ans
        @dp[sum][step][used] = true
        return true
      end
      sum -= @n[i]
      used &= (@all ^ bit)
    end
  end
  @dp[sum][step][used] = false
  return false
end

