# Leetcode: 2352. Equal Row and Column Pairs.
# https://leetcode.com/problems/equal-row-and-column-pairs/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 408 ms, faster than 17.39% of Ruby online submissions for Equal Row
# and Column Pairs.
# Memory Usage: 219.7 MB, less than 56.52% of Ruby online submissions for Equal
# Row and Column Pairs.
# 2023.06.13 Daily Challenge.
# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  g = grid
  rows = g.map{|x| x.join(?,)}.tally # Was a bug here, a delimiter needed.
  cols = g.transpose.map{|x| x.join(?,)}.tally
  ans = 0 
  rows.keys.each do |hash|
    cols[hash] ||= 0
    ans += rows[hash] * cols[hash]
  end
  ans
end
