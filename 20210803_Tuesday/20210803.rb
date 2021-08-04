# Leetcode: 90. Subsets II.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3837/
# https://youtu.be/MtZ_nMh_2vI by Jayati Tiwari.
# = = = = =
# Accepted.
# Thanks God!
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
  @ans = []
  @n = nums.sort
  bt(0,[])
  return @ans
end

def bt(start,curr)
  @ans.push(curr.clone)
  (start...@n.size).each do |i|
    if i > start && @n[i-1] == @n[i]
      next
    end
    curr.push(@n[i])
    bt(i+1,curr)
    curr.pop()
  end
end
