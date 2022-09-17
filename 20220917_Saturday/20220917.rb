# Leetcode: 336. Palindrome Pairs.
# https://leetcode.com/problems/palindrome-pairs/
# @param {String[]} words
# @return {Integer[][]}
def palindrome_pairs(words)
  b,r = {}, []
  words.each_with_index do |w,i|
    b[w.reverse] = i
  end
  words.each_with_index do |w,i|
    r.push([i,b[w]]) if b[w] && b[w] != i
    if "" != w && b[""] && w == w.reverse
      r.push([i,b[""]])
      r.push([b[""],i])
    end
    (0...w.size).each do |j|
    end
  end
  r
end
