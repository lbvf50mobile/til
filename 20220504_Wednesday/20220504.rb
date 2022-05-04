# Leetcode: 1679. Max Number of K-Sum Pairs.
# https://leetcode.com/problems/max-number-of-k-sum-pairs/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_operations(nums, k)
  # Create counter.
  cnt = nums.each_with_object(Hash.new){|el,o| o[el] ||= 0; o[el]+=1}
  # Make nums unique.
  nums = nums.uniq.sort_by{|x| -cnt[x]}
  # Now time to calculate pairs.
  answer = 0
  hsh = {}
  # k = a + b; a = k - b;
  nums.each_with_index do |b,i|
    a = k - b 
    if hsh[a]
      amount = min(cnt[a],cnt[b])
      cnt[a] -= amount
      cnt[b] -= amount
      answer += amount
    end
    hsh[b] = i
  end
  answer
end

def min(a,b)
  a<b ? a : b
end
