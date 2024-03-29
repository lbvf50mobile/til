# Leetcode: 71. Simplify Path.
# https://leetcode.com/problems/simplify-path/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 92 ms, faster than 40.00% of Ruby online submissions for Simplify
# Path.
# Memory Usage: 211 MB, less than 92.00% of Ruby online submissions for Simplify
# Path.
# 2023.04.12 Daily Challenge.
# @param {String} path
# @return {String}
def simplify_path(path)
  path = path.split(?/).select{|x| !x.empty?}.select{|x| x != '.'}
  ans = []
  path.each do |x|
    if '..' == x
      ans.pop
    else
      ans.push(x)
    end
  end
  return '/' if ans.empty?
  return '/' + ans.join(?/)
end
