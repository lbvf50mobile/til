# Leetcode: 1071. Greatest Common Divisor of Strings.
# https://leetcode.com/problems/greatest-common-divisor-of-strings/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 463 ms, faster than 100.00% of Ruby online submissions for Greatest Common Divisor of Strings.
# Memory Usage: 214.3 MB, less than 100.00% of Ruby online submissions for Greatest Common Divisor of Strings.
# 2023.02.01 Daily Challenge.
# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  min = str1.size < str2.size ? str1 : str2
  (1..min.size).reverse_each do |len|
    substr = min[0...len]
    regex = Regexp.new("^(#{substr})+$")
    if (regex === str1 && regex === str2)
      return substr
    end
  end
  return ""
end
