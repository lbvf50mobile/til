# Leetocde: 120. Triangle.
# https://leetcode.com/problems/triangle/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 163 ms, faster than 17.24% of Ruby online submissions for Triangle.
# Memory Usage: 211.5 MB, less than 82.76% of Ruby online submissions for Triangle.
# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  @t = triangle
  (1...@t.size).each do |i|
    (0...@t[i].size).each do |j|
      if j == 0
        @t[i][j] += @t[i-1][j]
      elsif j == @t[i].size-1
        @t[i][j] += @t[i-1][j-1]
      else
        ans = @t[i][j] + @t[i-1][j]
        tmp = @t[i][j] + @t[i-1][j-1]
        ans = tmp if tmp < ans
        @t[i][j] = ans
      end
    end
  end
  @t.last.min
end

