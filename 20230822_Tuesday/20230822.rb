# Leetcode: 168. Excel Sheet Column Title.
# https://leetcode.com/problems/excel-sheet-column-title/
# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  cn = column_number
  min = 1
  top = 27
  ans = []
  while cn >= min
    area = cn % top
    ans.unshift(area/min)
    min = top
    top *= 26
  end
  ans.map{|x| (?A.ord + (x-1)).chr}.join
end
# 1 - 26  [A - Z] 
# 26*26 [A* - B*]
# 26*26*26 [A** - B**]
