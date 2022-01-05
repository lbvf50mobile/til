# Leetcode: 131. Palindrome Partitioning.
# https://leetcode.com/problems/palindrome-partitioning/
# @param {String} s
# @return {String[][]}
def partition(s)
  @s = s
  @answer = []
  dfs(0,1,[])
  return @answer
end

def dfs(start_point, current_point, path_array)
  str = @s[start_point...current_point]
  if str == str.reverse
    if current_point == @s.size
      path_array.push(str)
      @answer.push(path_array.clone)
      path_array.pop
      return
    end
    # Just ignore.
    dfs(start_point,current_point+1, path_array)
    # Add new palindrome.
    path_array.push(str)
    dfs(current_point, current_point + 1, path_array)
    # Return to its inital postion.
    path_array.pop()
  else
    if current_point == @s.size
      path_array.pop
      return
    end
    # Just move forward.
    dfs(start_point,current_point + 1, path_array)
  end
end
