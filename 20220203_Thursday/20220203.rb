# Leetcode: 454. 4Sum II.
# https://leetcode.com/problems/4sum-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1455 ms, faster than 11.11% of Ruby online submissions for 4Sum II.
# Memory Usage: 239.3 MB, less than 22.22% of Ruby online submissions for 4Sum II.
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @param {Integer[]} nums4
# @return {Integer}
def four_sum_count(nums1, nums2, nums3, nums4)
  @d = false
  a_array = possible_sum_values(nums1, nums2)
  puts "#{a_array.inspect}" if @d
  b_array = possible_sum_values(nums3, nums4)
  puts "#{b_array.inspect}" if @d
  a_hash = get_hash_counter(a_array)
  answer = 0
  b_array.each do |b|
    answer += a_hash[-b] if a_hash[-b]
  end
  answer
end

def possible_sum_values(a,b)
  ans = []
  a.each do |x|
    b.each do |y|
      ans.push(x+y)
    end
  end
  ans
end

def get_hash_counter(x)
  x.each_with_object(Hash.new){|el,o| o[el] ||= 0; o[el] += 1;}
end
