# Leetcode: 1249. Minimum Remove to Make Valid Parentheses.
# https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 251 ms, faster than 74.70% of Ruby online submissions for Minimum Remove to Make Valid Parentheses.
# Memory Usage: 219.5 MB, less than 60.24% of Ruby online submissions for Minimum Remove to Make Valid Parentheses.
# @param {String} s
# @return {String}
def min_remove_to_make_valid(s)
  # Based on: https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/discuss/1073038/Python-or-Fast-and-Easy-or-Beats-98
  arr = s.chars
  stack = []
  arr.each_with_index do |el, i|
    if ?( == el
      stack.push(i)
    elsif ?) == el
      if stack.empty?
        arr[i] = ""
      else
        stack.pop
      end
    end
  end
  stack.each{|i| arr[i] = ""}
  arr.join
end
