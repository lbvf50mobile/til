# Leetcode: 448. Find All Numbers Disappeared in an Array. 
# https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 108 ms, faster than 97.50% of Ruby online submissions for Find All Numbers Disappeared in an Array.
# Memory Usage: 216.8 MB, less than 61.25% of Ruby online submissions for Find All Numbers Disappeared in an Array.
# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  arr = Array.new(nums.size + 1)
  nums.each{|i| arr[i] = true}
  ans = []
  (1..nums.size).each do |j|
    ans.push(j) if arr[j].nil?
  end
  ans
end
