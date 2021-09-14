# Leetcode: 917. Reverse Only Letters.
# https://leetcode.com/problems/reverse-only-letters/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/637/week-2-september-8th-september-14th/3974/
# @param {String} s
# @return {String}
def reverse_only_letters(s)
  # Create the indices array.
  indices = []
  s.chars.each_with_index do |el,i|
    if /[a-z]/i === el
      indices.push(i)
    end
  end
  # Create two pointers to swap characters.
  i,j = 0,indices.size - 1
  while i < j
    s[indices[i]],s[indices[j]] = s[indices[j]],s[indices[i]]
    i += 1
    j -= 1
  end
  return s
end
