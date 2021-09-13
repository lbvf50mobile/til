# Leetcode: 1189. Maximum Number of Balloons.
# https://leetcode.com/problems/maximum-number-of-balloons/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/637/week-2-september-8th-september-14th/3973/
# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
    
# b a ll oo n  # Characters.
# b a l o n    # Uniq charatecers.
# 0 1 2 3 4    # Index in array to store this characer.
# 1 1 2 2 1    # Amount of characters in the word.
  count = Array.new(5,0)
  amount = [1,1,2,2,1]
  text.chars.each do |char|
    count[0] += 1 if ?b == char
    count[1] += 1 if ?a == char
    count[2] += 1 if ?l == char
    count[3] += 1 if ?o == char
    count[4] += 1 if ?n == char
  end
  count.zip(amount).map{|(a,b)| a/b}.min
end
