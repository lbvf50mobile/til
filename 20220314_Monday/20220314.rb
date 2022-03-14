# Leetcode: 71. Simplify Path.
# https://leetcode.com/problems/simplify-path/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 121 ms, faster than 41.54% of Ruby online submissions for Simplify Path.
# Memory Usage: 210.9 MB, less than 66.15% of Ruby online submissions for Simplify Path.
# @param {String} path
# @return {String}
def simplify_path(path)
  return path if ?/ == path
  stack = []
  path.split(?/).each do |x|
    if ".." == x
      stack.pop if ! stack.empty?
    elsif x.empty? || "." == x
      ;
    else
      stack.push x
    end
  end
  stack.empty? ? ?/ : ?/ + stack.join(?/)
end
