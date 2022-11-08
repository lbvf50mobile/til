# Leetcode: 1544. Make The String Great.
# https://leetcode.com/problems/make-the-string-great/
# @param {String} s
# @return {String}
def make_good(s)
  marks = Array.new(s.size,false)
  while true
    delete = false
    (0...(s.size-1)).each do |i|
      a,b = s[i], s[i+1]
      p [a,b]
      if a == a.downcase && b == b.upcase && a == b.downcase
        marks[i] = true
        marks[i+1] = true
        delete = true
      end
    end
    break
  end
  answer = []
  (0...marks.size).each do |i|
    if ! marks[i]
      answer.push(s[i])
    end
  end
  answer.join
end
