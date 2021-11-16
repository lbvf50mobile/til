# Leetcode: 668. Kth Smallest Number in Multiplication Table.
# https://leetcode.com/problems/kth-smallest-number-in-multiplication-table/
# @param {Integer} m
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def find_kth_number(m, n, k)
  arr = []
  (1..m).each do |i|
    (1..n).each do |j|
      arr.push(i*j)
    end
  end
  arr.sort[k-1]
end
