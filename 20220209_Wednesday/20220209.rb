# Leetcode: 532. K-diff Pairs in an Array.
# https://leetcode.com/problems/k-diff-pairs-in-an-array/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# Fails on: [1,2,1,2,1,2]
# 1
def find_pairs(nums, k)
  @d = true
  puts "#{nums.inspect} and #{k};" if @d
  hash_counter = {}
  ans_counter = 0
  # |nums[i] - nums[j]| == k;
  # nj - stance for nums[j];
  # ni - stance for nums[i];
  nums.each do |nj|
    ni_1 = k + nj
    ni_2 = nj - k
    puts "Wokring with #{nj} looking for #{ni_1} or #{ni_2}." if @d
    if 0 != k
      ans_counter += hash_counter[ni_1] if hash_counter[ni_1]
      ans_counter += hash_counter[ni_2] if hash_counter[ni_2]
      puts "#{ni_1} and #{nj}" if hash_counter[ni_1] && @d
      puts "#{ni_2} and #{nj}" if hash_counter[ni_2] && @d
    else
      ans_counter += hash_counter[ni_1] if hash_counter[ni_1]
    end
    hash_counter[nj] ||= 0
    hash_counter[nj] += 1
  end
  ans_counter
end
