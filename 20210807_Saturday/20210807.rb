# Leetcode: 132. Palindrome Partitioning II.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3872/
# https://leetcode.com/problems/palindrome-partitioning-ii/
# https://leetcode.com/problems/palindrome-partitioning-ii/discuss/42198/My-solution-does-not-need-a-table-for-palindrome-is-it-right-It-uses-only-O(n)-space.
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {String} s
# @return {Integer}
def min_cut(s)
  n = s.size
  cut = Array.new(n+1,0)
  (0..n).each{|i| cut[i] = i-1}
  (0...n).each do |i|
    j = 0
    while i-j >= 0 && i+j < n && s[i-j]==s[i+j]
      cut[i+j+1] = [cut[i+j+1],1+cut[i-j]].min
      j += 1
    end
    j = 1
    while i-j+1 >= 0 && i+j < n && s[i-j+1] == s[i+j]
      cut[i+j+1] = [cut[i+j+1],1+cut[i-j+1]].min
      j += 1
    end
  end
  cut[n]
end
