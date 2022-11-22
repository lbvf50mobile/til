# Leetcode: 279. Perfect Squares.
# https://leetcode.com/problems/perfect-squares/
# = = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = = =
# Runtime: 131 ms
# Memory Usage: 210.9 MB
# 2022.11.22 Daily Challenge.
# @param {Integer} n
# @return {Integer}
def num_squares(n)
  # Based on:
  # https://youtu.be/HLZLwjzIVGo
  # https://leetcode.com/problems/perfect-squares/discuss/707526/Python-Fastest-O(sqrt(n))-solution-with-math-explanied.
  return 1 if (Math.sqrt(n).to_i ** 2) == n
  (0..Math.sqrt(n).to_i).each do |j|
    return 2 if (n -  j*j) == (Math.sqrt(n-j*j).to_i ** 2)
  end
  while 0 == n%4
    n /= 4
  end
  return 4 if 7 == n % 8
  return 3
end
