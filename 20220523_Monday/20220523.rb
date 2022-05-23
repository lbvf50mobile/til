# Leetcode: 474. Ones and Zeroes.
# https://leetcode.com/problems/ones-and-zeroes/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1798 ms, faster than 50.00% of Ruby online submissions for Ones and Zeroes.
# Memory Usage: 218.1 MB, less than 50.00% of Ruby online submissions for Ones and Zeroes.
# @param {String[]} strs
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def find_max_form(strs, m, n)
  # Based on:
  # https://leetcode.com/problems/ones-and-zeroes/discuss/1025400/Top-Down-VS-Bottom-up-oror-easy-to-understand-oror-Dhruv-vavliya
  dp = Array.new(m+1).map{ Array.new(n+1,0)}
  strs.each do |s|
    zero = s.count(?0)
    one = s.count(?1)
    (0..m).reverse_each do |i|
      (0..n).reverse_each do |j|
        if zero <= i && one <= j
          dp[i][j] = (1+dp[i-zero][j-one]) if (1+dp[i-zero][j-one]) > dp[i][j]
        end
      end
    end
  end
  dp[-1][-1]
end
