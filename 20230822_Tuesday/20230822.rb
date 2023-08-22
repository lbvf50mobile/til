# Leetcode: 168. Excel Sheet Column Title.
# https://leetcode.com/problems/excel-sheet-column-title/
# @param {Integer} column_number
# @return {String}
# TLE.
def convert_to_title(column_number)
  counter = [0]
  (1..column_number).each do |i|
    carry = 1
    j = 0
    while 1 == carry
      if counter.size > j
        if counter[j] < 26
          counter[j] += 1
          carry = 0
        else
          counter[j] = 1
          j += 1
          carry = 1
        end
      else
        counter.push(1)
        carry = 0
      end
    end
  end
  counter.reverse.map{|x| (?A.ord + (x-1)).chr}.join
end
# 1 - 26  [A - Z]
# 27 : 27+25=52 [AA - AZ] 26
# 53 : 53+25=76 [BA - BZ] 26
#
# 1 - 26 A-z
# 2 - A 1
