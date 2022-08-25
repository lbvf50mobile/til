# Leetcode: 383. Ransom Note.
# https://leetcode.com/problems/ransom-note/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 317 ms, faster than 25.40% of Ruby online submissions for Ransom Note.
# Memory Usage: 214.1 MB, less than 54.37% of Ruby online submissions for Ransom Note.
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  # Improvements. Check sizes.
  return false if magazine.size < ransom_note.size
  mag_cntr = create_counter(magazine)
  ran_cntr = create_counter(ransom_note)
  mag_cntr.zip(ran_cntr).all?{|mag,ran| mag >= ran}
end

def create_counter(str)
  answer = Array.new(26,0)
  str.chars.each do |char|
    answer[char.ord - ?a.ord] += 1
  end
  return answer
end
