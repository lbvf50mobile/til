# Leetcode: 118. Pascal's Triangle.
# https://leetcode.com/problems/pascals-triangle/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 126 ms, faster than 37.90% of Ruby online submissions for Pascal's Triangle.
# Memory Usage: 211 MB, less than 46.77% of Ruby online submissions for Pascal's Triangle.
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  answer = []
  (1..num_rows).each do |n|
    current = [1]*n
    (1..(n-2)).each do |i|
      current[i] = answer.last[i-1] + answer.last[i]
    end
    answer << current
  end
  answer
end
