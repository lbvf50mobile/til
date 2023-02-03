# Leetcode: 6. Zigzag Conversion.
# https://leetcode.com/problems/zigzag-conversion/
# @param {String} s
# @param {Integer} num_rows
# @return {String}
# TLE.
def convert(s, num_rows)
  return s if 1 == num_rows
  dr = true # true - down, false - up;
  mt = Array.new(num_rows).map{ Array.new(s.size," ")}
  k = 0
  i,j = 0,0
  while k < s.size
    mt[i][j] = s[k]
    k += 1
    if dr
      i += 1
    else
      i -= 1
      j += 1
    end
    if -1 == i
      i = 1
      j -= 1
      dr = !dr
      next
    end
    if num_rows == i
      dr = !dr
      i = num_rows - 2
      j += 1
      next
    end
  end
  mt.flatten.select{|x| x != " "}.join
end
