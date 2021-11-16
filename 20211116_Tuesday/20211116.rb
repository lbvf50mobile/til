# Leetcode: 668. Kth Smallest Number in Multiplication Table.
# https://leetcode.com/problems/kth-smallest-number-in-multiplication-table/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 364 ms, faster than 100.00% of Ruby online submissions for Kth Smallest Number in Multiplication Table.
# Memory Usage: 209.8 MB, less than 50.00% of Ruby online submissions for Kth Smallest Number in Multiplication Table.
# @param {Integer} m
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def find_kth_number(m, n, k)
  # Based on:
  # https://leetcode.com/problems/kth-smallest-number-in-multiplication-table/solution/
  @m,@n,@k = m,n,k
  lo, hi = 1, @m*@n
  while lo < hi
    mi = (lo+hi)/2
    if ! enough(mi)
      lo = mi + 1
    else
      hi = mi
    end
  end
  lo
end


def enough(x)
  count = 0
  (1..@m).each do |i|
    a = x/i
    a = @n if @n < a
    count += a
  end
  return count >= @k
end
