# Leetcode: 3. Longest Substring Without Repeating Characters.
# https://leetcode.com/problems/longest-substring-without-repeating-characters/
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return 0 if s.empty?
  @mask = 0
  @ones = 2**30 - 1
  i,j = 0,0
  bit = get_power_of_two(s[0])
  add_char(bit)
  size = 1
  max_size = 1
  while i < s.size && j < s.size
    # Here always arrives valid sliding window.
    # grow while it is possible.
    while j + 1 < s.size && may_add(s[j+1])
      j = j + 1
      size = j - i + 1
      max_size = size if size < max_size
      bit = get_power_of_tow(s[j])
      add_char(bit)
    end
    #shrink while
  end
  max_size
end

def may_add(char)
  bit = get_power_of_two(char)
  ! has_duplicates(bit)
end

def get_power_of_two(char)
  return 0 if ! /[a-z]/ === char
  2**(char.ord - ?a.ord)
end

def has_duplicates(bit)
  0 != (@mask & bit)
end

def add_char(bit)
  @mask |= bit
end

def reset_char(bit)
  x = @ones ^ bit
  @mask &= x
end

