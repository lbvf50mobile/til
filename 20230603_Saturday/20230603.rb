# Leetcode: 1376. Time Needed to Inform All Employees.
# https://leetcode.com/problems/time-needed-to-inform-all-employees/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 411 ms, faster than 92.31% of Ruby online submissions for Time Needed
# to Inform All Employees.
# Memory Usage: 224.4 MB, less than 92.31% of Ruby online submissions for Time
# Needed to Inform All Employees.
# 2023.06.03 Daily Challenge.
# @param {Integer} n
# @param {Integer} head_id
# @param {Integer[]} manager
# @param {Integer[]} inform_time
# @return {Integer}
def num_of_minutes(n, head_id, manager, inform_time)
  # Based on:
  # https://leetcode.com/problems/time-needed-to-inform-all-employees/solution/
  al = Array.new(n){ Array.new()}
  # Making an adjacency list, each index stores the Ids of an subordiante
  # employees.
  (0...n).each do |i|
    next if -1 == manager[i]
    al[manager[i]].push(i)
  end
  mt = -Float::INFINITY # Max time.
  q = [[head_id,0]]
  while !q.empty?
    i,t = q.shift # i - parent's index.
    mt = t if t > mt # Max time.
    al[i].each do |j|
      # i - parent, j - child.
      q.push([j,t+inform_time[i]])
    end
  end
  return mt # Max time.
end
