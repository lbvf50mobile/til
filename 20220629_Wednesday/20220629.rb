# Leetcode: 406. Queue Reconstruction by Height.
# https://leetcode.com/problems/queue-reconstruction-by-height/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 157 ms, faster than 50.00% of Ruby online submissions for Queue Reconstruction by Height.
# Memory Usage: 211.1 MB, less than 50.00% of Ruby online submissions for Queue Reconstruction by Height.
# @param {Integer[][]} people
# @return {Integer[][]}
def reconstruct_queue(people)
  # Based on:
  # https://leetcode.com/problems/queue-reconstruction-by-height/discuss/89345/Easy-concept-with-PythonC%2B%2BJava-Solution
  people.sort!{|a,b| a[0] == b[0] ? a[1] - b[1] : b[0] - a[0]}
  answer = [] 
  people.each do |man|
    answer.insert(man[1],man)
  end
  answer
end
