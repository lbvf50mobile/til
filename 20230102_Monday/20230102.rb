# Leetcode: 520. Detect Capital.
# https://leetcode.com/problems/detect-capital/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 86 ms, faster than 75.00% of Ruby online submissions for Detect Capital.
# Memory Usage: 211 MB, less than 66.67% of Ruby online submissions for Detect Capital.
# 2023.01.02 Daily Challenge.
# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  /^[a-z]+$/ === word || /^[A-Z]+$/ === word || /^[A-Z][a-z]+$/ === word
end
