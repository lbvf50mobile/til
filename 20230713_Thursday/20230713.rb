# Leetcode: 207. Course Schedule.
# https://leetcode.com/problems/course-schedule/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 104 ms, faster than 35.18% of Ruby online submissions for Course
# Schedule.
# Memory Usage: 212.7 MB, less than 31.48% of Ruby online submissions for Course
# Schedule.
# 2023.07.13 Daily Challenge.
# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  @ps = prerequisites
  # Based on:
  # https://leetcode.com/problems/course-schedule/solution/
  @adj = Array.new(num_courses){ Array.new()}
  @ps.each do |pt|
    @adj[pt[1]].push(pt[0])
  end
  @v = Array.new(num_courses,false)
  @is = Array.new(num_courses,false)
  (0...num_courses).each do |i|
    return false if dfs(i)
  end
  return true
end

def dfs(i)
  return true if @is[i]
  return false if @v[i]
  @v[i] = true
  @is[i] = true
  @adj[i].each do |j|
    return true if dfs(j)
  end
  @is[i] = false
  return false
end
