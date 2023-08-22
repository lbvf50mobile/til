# Leetcode: 168. Excel Sheet Column Title.
# https://leetcode.com/problems/excel-sheet-column-title/
# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  x = 26
  total = column_number
  ans = []
  while total > 0
    curr = total%x
    ans.unshift(curr)
    total -= curr
    total /= 26
    
  end
  ans.map{|x| (?A.ord + (x-1)).chr}.join
end
