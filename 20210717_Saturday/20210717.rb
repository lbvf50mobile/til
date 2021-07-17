# Leetcode: 927. Three Equal Parts. 
# https://leetcode.com/problems/three-equal-parts/
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/610/week-3-july-15th-july-21st/3817/
# Accepted.
# Thanks God!
# @param {Integer[]} arr
# @return {Integer[]}
def three_equal_parts(arr)
  ans = [-1, -1]
  sum = arr.sum
  if 0 == sum
    return [0,arr.size - 1]
  end
  return ans if 0 != sum % 3
  @a,@prt = arr, sum/3
  i0,i1 = find_borders(0)
  j0,j1 = find_borders(i1+1)
  k0,k1 = find_borders(j1+1)
  # p [i0,i1]
  # p [j0,j1]
  # p [k0,k1]
  zeros = @a.size - 1 - k1
  # p zeros
  return ans if !(i1+zeros < j0 && j1 + zeros < k0)
  a = @a[i0..i1+zeros]
  b = @a[j0..j1+zeros]
  c = @a[k0..k1+zeros]
  # p a
  # p b
  # p c
  if a == b && b == c
    return [i1+zeros, j1 + zeros + 1]
  end
  return ans
end

def find_borders(start)
  a,b,sum = nil, nil, 0
  (start...@a.size).each do |i|
    sum += @a[i]
    a = i if 1 == sum
    if @prt == sum
      b = i
      return [a,b]
    end
  end
  raise "Cannot find a,b for #{start}."
end

