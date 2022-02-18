# Leetcode: 402. Remove K Digits.
# https://leetcode.com/problems/remove-k-digits/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 107 ms, faster than 66.67% of Ruby online submissions for Remove K Digits.
# Memory Usage: 212.3 MB, less than 55.56% of Ruby online submissions for Remove K Digits.
# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
  n = num.chars.map(&:to_i)
  final_size = n.size - k
  stack = []
  n.each do |x|
    while (!stack.empty?) && k > 0 && stack.last > x
      stack.pop
      k -= 1
    end
    stack.push(x)
  end
  stack = stack[0...final_size]
  while 0 == stack.first
    stack.shift
  end
  return '0' if stack.empty?
  stack.join
end
