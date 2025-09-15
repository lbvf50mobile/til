# Leetcode: 1935. Maximum Number of Words You Can Type
# https://leetcode.com/problems/maximum-number-of-words-you-can-type/description/?envType=daily-question&envId=2025-09-15
# - - -
# Accepted.
# Thanks God, Jesus Christ!

# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
  ans = 0 # Number of words possible to type.
  broken = {}
  broken_letters.split("").each{|x| broken[x] = true }
  can = ->(w) {
    w.split("").all?{|x| !broken[x]}
  }
  text.split.each{|x| ans += 1 if can[x]}
  return ans
end
