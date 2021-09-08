# Leetcode: 848. Shifting Letters.
# https://leetcode.com/problems/shifting-letters/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/637/week-2-september-8th-september-14th/3968/
# @param {String} s
# @param {Integer[]} shifts
# @return {String}
def shifting_letters(s, shifts)
  (0...shifts.size-1).reverse_each do |i|
    shifts[i] = (shifts[i]+shifts[i+1])%26
  end
  s.chars.map.with_index{|char, i|
    ((((char.ord - ?a.ord) + shifts[i])%26) + ?a.ord).chr
  }.join
end
