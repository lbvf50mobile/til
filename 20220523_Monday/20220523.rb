# Leetcode: 474. Ones and Zeroes.
# https://leetcode.com/problems/ones-and-zeroes/
# @param {String[]} strs
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def find_max_form(strs, m, n)
  # https://www.codespeedy.com/knapsack-problem-using-greedy-method-in-java/
  @s,@m,@n = strs,m,n
  @dp = Array.new(m+1).map{ Array.new(n+1)}
  @s = @s.map{|x| [x.count(?0),[x.count(?1)]}
    .sort_by{|(a,b)| -a.fdiv(b)}
  used = Array.new(@s.size,0)
  @s.each_with_index do |(mm,nn),i|
    if m - mm >= 0 && n - nn >= 0
      m -= mm
      n -= nn
      @used[i] = 1
    end
  end
  @used.sum
    
end
