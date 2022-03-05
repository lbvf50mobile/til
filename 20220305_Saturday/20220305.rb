# Leetcode: 740. Delete and Earn.
# https://leetcode.com/problems/delete-and-earn/
# @param {Integer[]} nums
# @return {Integer}
# TLE.
def delete_and_earn(nums)
  @dp = {}
  counter = create_counter(nums)
  rec(counter)
end

def rec(counter)
  return @dp[counter] if @dp[counter]
  max = 0
  counter.keys.each do |i|
    tmp = counter[i] * i
    copy = counter.clone
    copy.delete(i)
    copy.delete(i+1)
    copy.delete(i-1)
    tmp += rec(copy)
    max = tmp if tmp > max
  end

  @dp[counter] = max
end

def create_counter(arr)
  arr.each_with_object(Hash.new){|el, o| o[el]||=0; o[el]+=1}
end
