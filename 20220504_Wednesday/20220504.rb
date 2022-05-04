# Leetcode: 1679. Max Number of K-Sum Pairs.
# https://leetcode.com/problems/max-number-of-k-sum-pairs/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 440 ms, faster than 100.00% of Ruby online submissions for Max Number of K-Sum Pairs.
# Memory Usage: 231.2 MB, less than 100.00% of Ruby online submissions for Max Number of K-Sum Pairs.
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
    hsh[b] = i
    a = k - b 
    if hsh[a]
      if a == b
        amount = cnt[a]/2
        cnt[a] -= amount
        answer += amount
      else
        amount = min(cnt[a],cnt[b])
        cnt[a] -= amount
        cnt[b] -= amount
        answer += amount
      end
    end
  end
  answer
end

def min(a,b)
  a<b ? a : b
end
