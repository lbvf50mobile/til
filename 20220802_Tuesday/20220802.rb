# Leetcode: 378. Kth Smallest Element in a Sorted Matrix.
# https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/
# = = = = = = = = = = = = = =
# Thanks God, Jesus Chirst!
# = = = = = = = = = = = = = =
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
# TLE.
def kth_smallest(matrix, k)
  @d = true
  heap = MaxHeap.new([])
  tmp = [] if @d
  matrix.each do |row|
    row.each do |cell|
      puts "cell = #{cell}" if @d
      if heap.size < k
        heap.push(cell)
        tmp.push(cell) if @d
        tmp.sort! if @d
        tmp.reverse! if @d
      elsif heap.max >= cell
        heap.pop
        heap.push(cell)
        tmp.pop if @d
        tmp.push(cell) if @d
        tmp.sort! if @d
        tmp.reverse! if @d
      end
      puts "heap = #{tmp.to_a.inspect}" if @d
    end
  end
  heap.max
end
