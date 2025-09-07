# Leetcode: 1304. Find N Unique Integers Sum up to Zero
# https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/description/?envType=daily-question&envId=2025-09-07
# - - -
# Accepted.
# Thanks God, Jesus Christ!

# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  ans = []
  if n.even?
    (1..(n/2)).each do |x|
      ans.push(x,-x)
    end
  else
    ans.push 0
    (1..((n-1)/2)).each do |x|
      ans.push(x,-x)
    end
  end
  return ans
end
