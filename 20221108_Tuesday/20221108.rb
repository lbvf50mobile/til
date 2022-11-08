# Leetcode: 1544. Make The String Great.
# https://leetcode.com/problems/make-the-string-great/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 247 ms, faster than 11.11% of Ruby online submissions for Make The String Great.
# Memory Usage: 211.1 MB, less than 33.33% of Ruby online submissions for Make The String Great.
# 2022.11.08 Daily Challenge.
# @param {String} s
# @return {String}
def make_good(s)
  marks = Array.new(s.size,false)
  while true
    stop = true
    prev = -1
    (0...s.size).each do |i|
      if ! marks[i]
        if prev >= 0 
          a,b = s[prev],s[i]
          same = a.upcase == b.upcase
          diff = a != b
          if same && diff
            marks[i],marks[prev] = true, true
            stop = false
            prev = -1
            break
          end
        end
        prev = i
      end
    end
    break if stop
  end
  answer = []
  (0...marks.size).each do |i|
    if ! marks[i]
      answer.push(s[i])
    end
  end
  answer.join
end
