# Leetcode: 1641. Count Sorted Vowel Strings.
# https://leetcode.com/problems/count-sorted-vowel-strings/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 167 ms, faster than 14.29% of Ruby online submissions for Count Sorted Vowel Strings.
# Memory Usage: 210.7 MB, less than 100.00% of Ruby online submissions for Count Sorted Vowel Strings.
# @param {Integer} n
# @return {Integer}
def count_vowel_strings(n)
  @n = n
  new_hash = {"a"=>1, "e"=>1, "i"=>1, "o"=> 1, ?u=>1}
  helper(new_hash,1)
end

def helper(hash,step)
  return hash.values.sum if step == @n
  chars = [?a,?e,?i,?o,?u]
  new_hash = {"a"=>0, "e"=>0, "i"=>0, "o"=> 0, ?u=>0}
  chars.each do |ch|
    chars.each do |key|
      if ch <= key
        new_hash[ch] += hash[key]
      end
    end
  end
  return helper(new_hash, step+1)
end
