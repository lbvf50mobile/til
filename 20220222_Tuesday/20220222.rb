# Leetcode: 171. Excel Sheet Column Number.
# https://leetcode.com/problems/excel-sheet-column-number/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 155 ms, faster than 16.28% of Ruby online submissions for Excel Sheet Column Number.
# Memory Usage: 210.6 MB, less than 53.49% of Ruby online submissions for Excel Sheet Column Number.
# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
  nums = column_title.chars.reverse.map{|x| to_number(x)}
  ans = 0
  nums.each_with_index do |el,i|
    ans += el * (26**i)
  end
  ans
end

def to_number(x)
  x.ord - ?A.ord + 1
end

