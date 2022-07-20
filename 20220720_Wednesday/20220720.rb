# Leetcode: 792. Number of Matching Subsequences.
# https://leetcode.com/problems/number-of-matching-subsequences/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1789 ms, faster than 66.67% of Ruby online submissions for Number of Matching Subsequences.
# Memory Usage: 223.4 MB, less than 33.33% of Ruby online submissions for Number of Matching Subsequences.
# @param {String} s
# @param {String[]} words
# @return {Integer}
def num_matching_subseq(s, words)
  # Idea from:
  # https://leetcode.com/problems/number-of-matching-subsequences/discuss/2308747/Bucket-by-character-or-Intuition-explained-with-image
  bucket = {}
  words.each do |w|
    bucket[w[0]] ||= []
    bucket[w[0]].push(w)
  end
  answer = 0
  s.chars.each do |c|
    next if bucket[c].nil?
    bucket[c].size.times do 
      tmp = bucket[c].shift
      if 1 == tmp.size
        answer += 1
        next
      end
      bucket[tmp[1]] ||= []
      bucket[tmp[1]].push(tmp[1..-1])
    end
  end
  answer
end

