# Leetcode: 496. Next Greater Element I.
# https://leetcode.com/problems/next-greater-element-i/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 89 ms, faster than 30.30% of Ruby online submissions for Next Greater Element I.
# Memory Usage: 210.4 MB, less than 39.39% of Ruby online submissions for Next Greater Element I.
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  # Reverse index/value of nums2 array.
  flip = nums2.each_with_index.with_object(Hash.new){|(el,i),o| o[el] = i}
  nums1.map{|x|
    i = flip[x]
    ans = -1
    (i+1...nums2.size).each do |j|
      if nums2[j] > x
        ans = nums2[j]
        break
      end
    end
    ans
  }
end
