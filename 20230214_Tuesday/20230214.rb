# Leetcode: 67. Add Binary.
# https://leetcode.com/problems/add-binary/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 83 ms, faster than 72.14% of Ruby online submissions for Add Binary.
# Memory Usage: 211 MB, less than 34.29% of Ruby online submissions for Add Binary.
# 2023.02.14 Daily Challenge.
# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  (a.to_i(2) + b.to_i(2)).to_s(2)
end
