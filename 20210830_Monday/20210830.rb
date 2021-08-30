# Leetcode: 598. Range Addition II.
# https://leetcode.com/problems/range-addition-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/617/week-5-august-29th-august-31st/3957/
# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
  row = Array.new(m,0)
  column = Array.new(n,0)
  ops.each do |(r,c)|
    row[r-1] += 1
    column[c-1] += 1
  end
  (0...m-1).reverse_each do |i|
    row[i] += row[i+1]
  end
  (0...n-1).reverse_each do |i|
    column[i] += column[i+1]
  end
  max = row[0]
  width = 0
  heigh = 0
  while width < m && max == row[width]; width += 1; end
  while heigh < n && max == column[heigh]; heigh += 1; end
  width * heigh
end
