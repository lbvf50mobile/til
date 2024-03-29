# Leetcode: 2131. Longest Palindrome by Concatenating Two Letter Words.
# https://leetcode.com/problems/longest-palindrome-by-concatenating-two-letter-words/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2165 ms, faster than 5.26% of Ruby online submissions for Longest Palindrome by Concatenating Two Letter Words.
# Memory Usage: 221.7 MB, less than 73.68% of Ruby online submissions for Longest Palindrome by Concatenating Two Letter Words.
# @param {String[]} words
# @return {Integer}
def longest_palindrome(words)
  duplicates_hash = {}
  # Pairs hash. 
  # Key: Pair sorted ascending.
  # Value: Two values array first Ascending second Descending.
  pairs_hash = {}
  words.each do |w|
    if w[0] == w[1]
      duplicates_hash[w] ||= 0
      duplicates_hash[w] += 1
    elsif w[0] < w[1]
      key = w
      pairs_hash[key] ||= [0,0]
      pairs_hash[key][0] += 1
    elsif w[0] > w[1]
      key = w.reverse
      pairs_hash[key] ||= [0,0]
      pairs_hash[key][1] += 1
    end
  end
  answer = 0
  pairs_hash.keys.each do |key|
    answer += pairs_hash[key].min * 4 # Fixed. Was 2.
  end
  duplicates_hash.keys.each do |key|
    answer += (duplicates_hash[key]/2) * 4
    duplicates_hash[key] %= 2
  end
  duplicates_hash.keys.each do |key|
    if duplicates_hash[key] > 0
      answer += 2
      break
    end
  end
  return answer
end
