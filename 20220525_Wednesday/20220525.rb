# Leetcode: 354. Russian Doll Envelopes. 
# https://leetcode.com/problems/russian-doll-envelopes/
# @param {Integer[][]} envelopes
# @return {Integer}
# fails:
# [[4,5],[4,6],[6,7],[2,3],[1,1]]
def max_envelopes(envelopes)
  # Based on:
  # https://leetcode.com/problems/russian-doll-envelopes/discuss/1134011/JS-Python-Java-C%2B%2B-or-Easy-LIS-Solution-w-Explanation
  e = envelopes.sort{|a,b| a[0] == b[0] ? a[1] <=> b[1] : a[0] <=> b[0]}
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
