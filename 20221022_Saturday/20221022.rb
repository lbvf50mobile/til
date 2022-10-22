# Leetcode: 76. Minimum Window Substring.
# https://leetcode.com/problems/minimum-window-substring/
# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  @s, @t = s, t
  # If t is char. Return this char.
  if 1 == t.size
    return t if s.include?(t)
    return ""
  end
  # t cannot be bigger then s.
  return "" if t.size > s.size
  # if t == s they must be equal.
  if t.size == s.size
    return t if s == t
    return ""
  end
  # Set minimum huge.
  min_size = Float::INFINITY
  min_str = ""
  # Create ideal hash.
  @ideal_hash = t.chars.tally
  # Define current hash.
  i,j = 0,0
  # Find i to be in ideal hash.
  while i < s.size && ! @ideal_hash[s[i]]; i += 1; end
  return "" if i == s.size
  hash[s[i]] = 1
  while j < s.size
    # Hash contains all characters?
    is = check(hash)
    if is
      while i <= j; && ! @ideal_hash[s[i]]; i += 1; end
      # Update
      if j-i + 1 < min_size
        return s[i..j] if (j-i+1) == t.size
        min_size = j-i+1
        min_str = s[i..j]
      end
      # Shrink.
      if i == j
        i += 1
        j += 1
        break if j >= s.size
        hash[s[i-1]] -= 1 # Remove old.
        hash[s[j]] += 1
      else
        i += 1
        hash[s[i-1]] -= 1 # Remove old.
      end
      # Shrinked.
    else
      # Grow.
      j += 1
      break if j >= s.size
      hash[s[j]] += 1 # Add new.
      # Growed.
    end
  end
  return min_str
end

def check(h)
  @ideal_hash.keys.each do |k|
    return false if (!h[k]) || h[k] < @ideal_hash[k]
  end
  return true
end

