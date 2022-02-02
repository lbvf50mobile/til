# Leetcode: 438. Find All Anagrams in a String.
# https://leetcode.com/problems/find-all-anagrams-in-a-string/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 607 ms, faster than 6.06% of Ruby online submissions for Find All Anagrams in a String.
# Memory Usage: 215.5 MB, less than 6.06% of Ruby online submissions for Find All Anagrams in a String.
# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, pr)
  @start = 0
  @finish = ?z.ord - ?a.ord
  template = create_test_array
  pr.chars.each do |char|
    template[get_index_char(char)] += 1
  end
  window = create_test_array
  s.chars[0...pr.size].each do |char|
    window[get_index_char(char)] += 1
  end
  ans = []
  ans.push(0) if compare_arrays(template,window)
  chrs = s.chars.map{|x| get_index_char(x)}
  (1..(s.size - pr.size)).each do |i|
    window[chrs[i-1]] -= 1
    window[chrs[i+pr.size-1]] += 1
    ans.push(i) if compare_arrays(template,window)
  end
  ans
end

def create_test_array
  Array.new(@finish+1,0)
end
def compare_arrays(a,b)
  a.zip(b).all?{|(x,y)| x == y}
end
def get_index_char(char)
  char.ord - ?a.ord
end
