# Leetcode: 1282. Group the People Given the Group Size They Belong To.
# https://leetcode.com/problems/group-the-people-given-the-group-size-they-belong-to
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 102 ms, faster than 63.64% of Ruby online submissions for Group the
# People Given the Group Size They Belong To.
# Memory Usage: 211 MB, less than 81.82% of Ruby online submissions for Group
# the People Given the Group Size They Belong To.
# 2023.09.11 Daily Challenge.
# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  gh = {} # groups hash.
  group_sizes.each_with_index do |x,i|
    gh[x] ||= []
    gh[x].push(i)
  end
  ans = [ ]
  gh.to_a.each do|size, arr| 
    ans.push(*arr.each_slice(size).to_a)
  end
  return ans
end
