# Leetcode: 131. Palindrome Partitioning.
# https://leetcode.com/problems/palindrome-partitioning/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 2162 ms, faster than 25.00% of Ruby online submissions for Palindrome Partitioning.
# Memory Usage: 248.5 MB, less than 25.00% of Ruby online submissions for Palindrome Partitioning.
# @param {String} s
# @return {String[][]}
def partition(s)
  @s = s
  @answer = []
  dfs(0,[])
  return @answer
end
def dfs(start_point, path_array)
  if start_point == @s.size
    @answer.push(path_array.clone)
    path_array.pop()
    return 
  end
  str = ""
  (start_point...@s.size).each do |i|
    str += @s[i]
    if is_palindrome(str)
      path_array.push(str)
      dfs(i+1,path_array)
    end
  end
  path_array.pop() if (!path_array.empty?)
end
def is_palindrome(x)
  (!x.empty?) && x == x.reverse 
end
