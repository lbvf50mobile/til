# Leetcode: 1178. Number of Valid Words for Each Puzzle.
# https://leetcode.com/problems/number-of-valid-words-for-each-puzzle/
# @param {String[]} words
# @param {String[]} puzzles
# @return {Integer[]}
def find_num_of_valid_words(words, puzzles)
  convert = ->x{ ans = 0
                 x.chars.each{|ch| ans |= (1<<(ch.ord - ?a.ord))}
                 p [x,ans]
                 ans
    }
  hash = {}
  ans = Array.new(puzzles.size,0)
  w,ps = words.map(&convert),puzzles.map(&convert)
  ps.each_with_index do |ps,i|
    w.each do |x|
      ans[i] += 1 if (ps^x)&x == 0 
    end
  end
  ans
end
