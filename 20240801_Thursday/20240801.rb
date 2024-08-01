# Leetcode: 2678. Number of Senior Citizens.
# https://leetcode.com/problems/number-of-senior-citizens/?envType=daily-question&envId=2024-08-01
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 65 ms, faster than 50.00% of Ruby online submissions for Number of
# Senior Citizens.
# Memory Usage: 211.6 MB, less than 33.33% of Ruby online submissions for
# Number of Senior Citizens.
# @param {String[]} details
# @return {Integer}
def count_seniors(details)
  details.map{|x| x[11...13].to_i}.count{|x| x > 60}
end
