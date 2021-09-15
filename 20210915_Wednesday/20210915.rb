# Leetcode: 978. Longest Turbulent Subarray.
# https://leetcode.com/problems/longest-turbulent-subarray/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/638/week-3-september-15th-september-21st/3976/
# @param {Integer[]} arr
# @return {Integer}
def max_turbulence_size(arr)
  a = arr # Make things shorter.
  @a = arr
  max = 1 # At least one element array.
  # But wait! May be there are 2 elements turbulent aray?
  (0..a.size-2).each do |i|
    if a[i] != a[i+1]
      max = 2
      break
    end
  end
  return max if max != 2 # There is no 2 elements long subarray.
  borders = find_3_elements(0) # Borders of 3 elements turbulent array.
  return 2 if ! borders
  i,j = borders
  while borders
    width = j - i + 1
    max = width if max < width
    # Is it possible to move j further?
    j0,j1,j2 = j-1,j,j+1
    if j2 < a.size && valid(j0,j1,j2)
      j = j2
    else
      borders = find_3_elements(j)
      break if ! borders
      i,j = borders
    end
  end
  return max
end

def valid(j0,j1,j2)
  return true if @a[j0] < @a[j1] && @a[j1] > @a[j2]
  return true if @a[j0] > @a[j1] && @a[j1] < @a[j2]
  return false
end

def find_3_elements(i)
  false if i > @a.size - 3
  (i..@a.size-3).each do |j|
    return [j,j+2] if valid(j,j+1,j+2)
  end
  return false
end

