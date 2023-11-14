# Leetcode: 1930. Unique Length-3 Palindromic Subsequences.
# https://leetcode.com/problems/unique-length-3-palindromic-subsequences
# = = = = = = = = = = = = = =
# Correct.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# TLE
# 2023.11.14 Daily Challenge.
# @param {String} s
# @return {Integer}
require "set"
def count_palindromic_subsequence(s)
  # Based on:
  # https://leetcode.com/problems/unique-length-3-palindromic-subsequences/solution/
  first = Array.new(26,-1)
  last = Array.new(26,-1)
  s.chars.each_with_index do |char,i|
    curr = char.ord - 'a'.ord
    first[curr] = i if -1 == first[curr]
    last[curr] = i
  end
  ans = 0
  26.times do |i|
    next if -1 == first[i]
    between = Set.new
    (first[i] + 1...last[i]).each do |j|
      between.add(s[j])
    end
    ans += between.size
  end
  return ans
end
