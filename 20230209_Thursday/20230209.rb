# Leetcode: 2306. Naming a Company.
# https://leetcode.com/problems/naming-a-company/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 963 ms, faster than 100.00% of Ruby online submissions for Naming a Company.
# Memory Usage: 249.7 MB, less than 100.00% of Ruby online submissions for Naming a Company.
# 2023.02.09 Daily Challenge.
# @param {String[]} ideas
# @return {Integer}
def distinct_names(ideas)
  # Based on:
  # https://leetcode.com/problems/naming-a-company/solution/
  require "set"
  ig = Array.new(26).map{ Set.new }
  ideas.each do |id|
    ig[id[0].ord - ?a.ord].add(id[1..-1])
  end
  ans = 0
  (0...25).each do |i|
    (i+1...26).each do |j|
      nom = (ig[i] & ig[j]).size
      a = ig[i].size
      b = ig[j].size
      ans += 2 * (a - nom) * (b - nom)
    end
  end
  return ans
end
