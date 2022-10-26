# Leetcode: 523. Continuous Subarray Sum.
# https://leetcode.com/problems/continuous-subarray-sum/
# Fail.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def check_subarray_sum(nums, k)
  # Create an prefix sum array.
  pref_sum = Array.new(nums.size+1,0)
  # Also create a hash to store indices of prev sums.
  hash = {}
  hash[0] = [0] 
  # Interate overy elements of prefix array.
  (1..nums.size).each do |j|
    # Move nums one index right.
    # That's wny use j-1.
    pref_sum[j] = pref_sum[j-1] + nums[j-1] # !
    # Save current sum. Bigest one.
    sum = pref_sum[j]
    # Define maxumum power of k in this sum.
    lg = Math.log(sum,k).to_i
    if lg > 0
      # Seek do there is a index.
      # After substructing k**n from current sum.
      (1..lg).each do |n|
         kn = sum - (k**n)
         is = hash[kn]
         # There must be at leas two elements to delete.
         # What if there are a lot of zeroz?
         next if ! is
         is.each{|i| 
           return true if  j - i >= 2
         }
      end
    end
    # Save hash of cuurent number.
    hash[sum] ||= [] 
    hash[sum].push(j)
  end
  return false
end
