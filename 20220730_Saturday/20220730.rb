# Leetcode: 916. Word Subsets.
# https://leetcode.com/problems/word-subsets/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 2637 ms, faster than 100.00% of Ruby online submissions for Word Subsets.
# Memory Usage: 224.5 MB, less than 100.00% of Ruby online submissions for Word Subsets.
# @param {String[]} words1
# @param {String[]} words2
# @return {String[]}
def word_subsets(words1, words2)
  @d = false
  masks_2 = arr_to_masks(words2)
  global_mask = 0
  global_counter = Array.new(26,0)
  masks_2.each do |(wrd,bits,cntr)|
    global_mask |= bits
    (0...26).each do |i|
      global_counter[i] = cntr[i] if cntr[i] > global_counter[i]
    end
  end
  p global_mask if @d
  arr_to_masks(words1)
    .select{|(wrd,bits,cntr)|
      p [wrd, bits, global_mask,global_mask & bits] if @d
      # 0 != (global_mask & bits)} # Here was en error 0101 & 1 = 1
      if global_mask != (global_mask & bits)
        false
      else
        check_subset(cntr,global_counter)
      end
    }
    .map(&:first)
end


def char_to_bit(char)
  1 << (char.ord - ?a.ord)
end

def word_to_mask(word)
  answer = 0
  word.chars.each do |char|
    answer |= char_to_bit(char)
  end
  answer
end
def counter(word)
  word.chars.each_with_object(Array.new(26,0)) do |el,o|
    o[el.ord-?a.ord] += 1
  end
end
def check_subset(cntr, subcounter)
  (0...26).all?{|i| cntr[i] >= subcounter[i]}
end

def arr_to_masks(arr)
  arr.map{|x| [x,word_to_mask(x),counter(x)]}
end
