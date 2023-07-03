# Leetcode: 859. Buddy Strings.
# https://leetcode.com/problems/buddy-strings/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 109 ms, faster than 30.00% of Ruby online submissions for Buddy
# Strings.
# Memory Usage: 211.1 MB, less than 90.00% of Ruby online submissions for Buddy
# Strings.
# 2023.07.03 Daily Challenge.
# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  return false if s.size != goal.size
  return false if s.size < 2
  a = [?_,?_]
  b = [?-,?_]
  counter = 0
  h = {}
  dup = false
  (0...s.size).each do |i|
    return false if counter > 2
    if goal[i] != s[i]
      counter += 1
      a[counter-1] = s[i]
      b[counter-1] = goal[i]
    else
      h[s[i]] ||= 0 
      h[s[i]] += 1
      dup = true if 2 == h[s[i]]
    end
  end
  return true if dup && 0 == counter
  return false if 2 != counter
  return true if a[1] == b[0] && b[1] == a[0]
  return false
end

