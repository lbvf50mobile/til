# Leetcode: 363. Max Sum of Rectangle No Larger Than K.
# https://leetcode.com/problems/max-sum-of-rectangle-no-larger-than-k/
# TLE.
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def max_sum_submatrix(matrix, k)
  @m, @k = matrix, k # Give short names.
  max = -Float::INFINITY # This will be a max.
  (0...@m[0].size).each do |l| # Start of the interval.
    arr = Array.new(@m.size,0) # Array to store sum.
    (l...@m[0].size).each do |r| # End of the interval.
      (0...@m.size).each{|i| arr[i] += @m[i][r]} # Fill by rows.
       tmp = find_max(arr)
       max = tmp if tmp > max
       return max if max == @k
    end
  end
  max
end

def find_max(arr)
  max = -Float::INFINITY
  (0...arr.size).each do |i|
    s = 0 
    (i...arr.size).each do |j|
      s += arr[j]
      if s <= @k
        max = s if s > max
        return max if max == @k
      end
    end
  end
  return max
end
