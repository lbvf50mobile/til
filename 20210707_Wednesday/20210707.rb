# Leetcode: 378. Kth Smallest Element in a Sorted Matrix.
# https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/ 
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/608/week-1-july-1st-july-7th/3805/
# Fails:
# [[1,3,5],[6,7,12],[11,14,14]]
# 7
# Note: It if is a first element need to check last row!
# Or if it is an element of last row need to check two columns.
# - - - - -
# Thanks God!
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
  debug = true
  amount = matrix.size**2
  size = matrix.size
  return matrix[0][0] if 1 == k
  return matrix[size-1][size-1] if amount == k
  return matrix[0][k-1] if size == 1 # I think this one is redundand because NxN.

  mx_trsp = matrix.transpose # For binary search in collumns.
  matrix.each{|x| x.map!.with_index{|el,i| [el,i]}}
  mx_trsp.each{|x| x.map!.with_index{|el,i| [el,i]}}


  cur_row, cur_col, cur_val = 0,0,matrix[0][0].first
  (1...k).each do 
    next_row,next_col = nil,nil
    next_row = cur_row + 1 if cur_row + 1 < size
    next_col = cur_col + 1 if cur_col + 1 < size
    puts "cur_row = #{cur_row.inspect}, cur_col = #{cur_col.inspect}, cur_val = #{cur_val.inspect}" if debug
    puts "next_row = #{next_row.inspect}, next_col = #{next_col.inspect}." if debug
    if next_row && next_col
      puts "Next row and next_col" if debug
      row_pair = matrix[next_row].bsearch{|x| x.first >= cur_val}
      col_pair = mx_trsp[next_col].bsearch{|x| x.first >= cur_val}
      puts "row_pair = #{row_pair.inspect}" if debug
      puts "col_pair = #{col_pair.inspect}" if debug
      if row_pair.first < col_pair.first
        cur_val = row_pair.first
        cur_row = next_row
        cur_col = row_pair.last
      else
        cur_val = col_pair.first
        cur_row = col_pair.last
        cur_col = next_col
      end
    elsif next_row
      puts "Only next_row = #{next_row}" if debug
      row_pair = matrix[next_row].bsearch{|x| x.first >= cur_val}
      puts "row_pair = #{row_pair.inspect}" if debug
      cur_val = row_pair.first
      cur_row = next_row
      cur_col = row_pair.last
    elsif next_col
      puts "Only nex_col = #{next_col}" if debug
      col_pair = mx_trsp[next_col].bsearch{|x| x.first >= cur_val}
      puts "col_pair = #{col_pair.inspect}" if debug
      cur_val = col_pair.first
      cur_row = col_pair.last
      cur_col = next_col
    else
      raise "Looks like it last element in my solution, but this case should be cut at the beginign."
    end
  end

  return cur_val
end
