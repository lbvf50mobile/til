# Leetcode: 692. Top K Frequent Words.
# https://leetcode.com/problems/top-k-frequent-words/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 87 ms, faster than 100.00% of Ruby online submissions for Top K Frequent Words.
# Memory Usage: 211.2 MB, less than 21.57% of Ruby online submissions for Top K Frequent Words.
# 2022.10.19 Daily Challenge.
# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
  hash = words.tally
  hash.to_a.sort{|x,y| x[1] == y[1] ? x[0]<=>y[0] : y[1] <=> x[1]}[0...k].map(&:first)
end
