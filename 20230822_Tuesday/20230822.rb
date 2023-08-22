# Leetcode: 168. Excel Sheet Column Title.
# https://leetcode.com/problems/excel-sheet-column-title/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 76 ms, faster than 57.89% of Ruby online submissions for Excel Sheet
# Column Title.
# Memory Usage: 211 MB, less than 18.42% of Ruby online submissions for Excel
# Sheet Column Title.
# 2023.08.22 Daily Challenge.
# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  # Based on:
  # https://leetcode.com/problems/excel-sheet-column-title/solution/
  c = column_number 
  ans = ""
  while c > 0
    c -= 1
    ans = (?A.ord + c%26).chr + ans
    c /= 26
  end
  return ans
end
