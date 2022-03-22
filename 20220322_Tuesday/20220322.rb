# Leetcode: 1663. Smallest String With A Given Numeric Value.
# https://leetcode.com/problems/smallest-string-with-a-given-numeric-value/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1776 ms, faster than 100.00% of Ruby online submissions for Smallest String With A Given Numeric Value.
# Memory Usage: 233.1 MB, less than 100.00% of Ruby online submissions for Smallest String With A Given Numeric Value.
# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_smallest_string(n, k)
  answer = Array.new(n,0)
  (0...answer.size).each do |i|
    length = answer.size - i
    if k - 26 >= length - 1
      k -= 26
      answer[i] = 26
    else
      # k - x = length - 1
      # k + 1 - length = x
      x = k + 1 - length
      k -= x
      answer[i] = x
    end
  end
  answer.reverse.map{|x| (?a.ord - 1 + x).chr}.join
end
