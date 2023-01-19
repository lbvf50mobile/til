# Leetcode: 974. Subarray Sums Divisible by K.
# https://leetcode.com/problems/subarray-sums-divisible-by-k/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 162 ms, faster than 66.67% of Ruby online submissions for Subarray Sums Divisible by K.
# Memory Usage: 214.8 MB, less than 66.67% of Ruby online submissions for Subarray Sums Divisible by K.
# 2023.01.19 Daily Challenge.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarrays_div_by_k(nums, k)
  # What if save x%k as a key. Where x is a previx sum for `i`.
  # Than value would be number of such elements.
  # when 0 == sum%k? 0 == sum or k == sum.
  # 0 == curr_sum - prev_sum => prev_sum = curr_sum;
  # k == curr_sum - prev_sum => prev_sum = curr_sum - k;
  h = {}
  h[0] = 1 # Nothing is something :-) Before the beging of the prfx_sum array.
  # Nothing is something is a lection of Sandi Metz.
  prfx_sum = 0
  answer = 0
  nums.each do |x|
    prfx_sum = (prfx_sum+x)%k
    # 0 == curr_sum - prev_sum => prev_sum = curr_sum;
    one = h[prfx_sum]
    if one
      answer += one
    end
    # k == curr_sum - prev_sum => prev_sum = curr_sum - k;
    two = h[prfx_sum - k] 
    if two
      answer += two
    end
    h[prfx_sum] ||= 0
    h[prfx_sum] += 1
  end
  return answer
end
