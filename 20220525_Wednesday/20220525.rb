# Leetcode: 354. Russian Doll Envelopes. 
# https://leetcode.com/problems/russian-doll-envelopes/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 1037 ms, faster than 50.00% of Ruby online submissions for Russian Doll Envelopes.
# Memory Usage: 221.2 MB, less than 100.00% of Ruby online submissions for Russian Doll Envelopes.
# @param {Integer[][]} envelopes
# @return {Integer}
def max_envelopes(envelopes)
  # Based on:
  # https://leetcode.com/problems/russian-doll-envelopes/discuss/1134011/JS-Python-Java-C%2B%2B-or-Easy-LIS-Solution-w-Explanation
  e = envelopes.sort{|a,b| a[0] == b[0] ? b[1] <=> a[1] : a[0] <=> b[0]}
  dp = []
  e.each do |(_,height)|
    left = 0 
    right = dp.size
    while left < right
      mid = (left + right)/2
      if(dp[mid] < height)
        left = mid + 1
      else
        right = mid
      end
    end
    dp[left] = height
  end
  dp.size
end
