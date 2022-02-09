# Leetcode: 532. K-diff Pairs in an Array.
# https://leetcode.com/problems/k-diff-pairs-in-an-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 112 ms, faster than 66.67% of Ruby online submissions for K-diff Pairs in an Array.
# Memory Usage: 214 MB, less than 16.67% of Ruby online submissions for K-diff Pairs in an Array.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_pairs(nums, k)
  require 'set'
  @d = false
  puts "#{nums.inspect} and #{k};" if @d
  hash_counter = {}
  ans_counter = 0
  ans_set = Set.new
  # |nums[i] - nums[j]| == k;
  # nj - stance for nums[j];
  # ni - stance for nums[i];
  nums.each do |nj|
    ni_1 = k + nj
    ni_2 = nj - k
    # Generate keys for set.
    key1 = ni_1 > nj ? "#{nj},#{ni_1}" : "#{ni_1},#{nj}"
    key2 = ni_2 > nj ? "#{nj},#{ni_2}" : "#{ni_2},#{nj}"
    if k != 0 && hash_counter[ni_1]
      ans_set.add(key1)
    end
    if k != 0 && hash_counter[ni_2]
      ans_set.add(key2)
    end
    if k == 0 && hash_counter[ni_1]
      ans_set.add(key1)
    end
    hash_counter[nj] ||= 0
    hash_counter[nj] += 1
  end
  ans_set.size
end
