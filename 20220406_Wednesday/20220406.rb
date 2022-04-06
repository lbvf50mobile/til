# Leetcode: 923. 3Sum With Multiplicity.
# https://leetcode.com/problems/3sum-with-multiplicity/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1574 ms, faster than 100.00% of Ruby online submissions for 3Sum With Multiplicity.
# Memory Usage: 211.3 MB, less than 100.00% of Ruby online submissions for 3Sum With Multiplicity.
# @param {Integer[]} arr
# @param {Integer} target
# @return {Integer}
def three_sum_multi(arr, target)
  # Based on: https://leetcode.com/problems/3sum-with-multiplicity/solution/
  arr.sort!
  ans = 0
  a = arr
  mod = 10**9 + 7
  n = arr.size
  arr.each_with_index do |x,i|
    # We'll try to find the number of i < j < k
    # with a[j] + a[k] == t, where t = target - a[i];
    t = target - a[i]
    j,k = i+1, n - 1
    while j < k
      # These steps proceed as in a typcal two-sum.
      if a[j] + a[k] < t
        j += 1
      elsif a[j] + a[k] > t
        k -= 1
      elsif a[j] != a[k]
        # Whe have a[j] + a[k] == t.
        # Let's count "left": the number of a[j] == a[j+1] == a[j+2] == ...
        left, right = 1, 1
        while j + 1 < k && a[j] == a[j+1]
          left += 1; j += 1;
        end
        while k - 1 > j && a[k] == a[k-1]
          right += 1
          k -= 1
        end
        # We contributed left * right many pairs.
        ans += left * right
        ans %= mod; j += 1; k -= 1;
      else
        # M = k-j+1;
        # We contribute M*(M-1)/2 pairs.
        ans += (k-j+1)*(k-j)/2
        ans %= mod
        break
      end
    end
  end
  ans
end
