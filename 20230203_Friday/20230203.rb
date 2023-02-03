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
    char = s[k]
    mt[i][j] = char
    k += 1
    ni, nj = i,j
    if dr
      ni += 1
    else
      ni -= 1
      nj += 1
    end
    if !ni.between?(0,num_rows-1) 
      dr = !dr
      ni,nj = i,j
      if dr
        ni += 1
      else
        ni -= 1
        nj += 1
      end
    end
    i,j = ni, nj
  end
  mt.flatten.select{|x| x != " "}.join
end
