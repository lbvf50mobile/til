# Leetcode: 947. Most Stones Removed with Same Row or Column.
# https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/
# @param {Integer[][]} stones
# @return {Integer}
# Fails: [[0,1],[1,2],[1,3],[3,3],[2,3],[0,2]]
def remove_stones(stones)
  rc = Array.new(10**4,0) # row counter.
  cc = Array.new(10**4,0) # columns counter.
  stones.each do |i,j|
    rc[i] += 1
    cc[j] += 1
  end
  counter = 0
  stones.each do |i,j|
    if rc[i] > 1 || cc[j] > 1
      rc[i] -= 1
      cc[j] -= 1
      counter += 1
    end
  end
  counter 
end
