# Leetcode: 393. UTF-8 Validation.
# https://leetcode.com/problems/utf-8-validation/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 128 ms, faster than 33.33% of Ruby online submissions for UTF-8 Validation.
# Memory Usage: 211.8 MB, less than 33.33% of Ruby online submissions for UTF-8 Validation.
# @param {Integer[]} data
# @return {Boolean}
def valid_utf8(data)
  @d = false
  # Set masks.
  t7= 2**7
  t7pt6 = t7 + (2**6)
  t7pt6pt5 = t7pt6 + (2**5)
  t7pt6pt5pt4 = t7pt6pt5 + (2**4)
  t7pt6pt5pt4pt3 = t7pt6pt5pt4 + (2**3)
  # Set checks.
  one_byte = ->int{ 0 == int & t7 }
  two_bytes = ->int{ t7pt6 == (t7pt6pt5 & int)}
  three_bytes = ->int{ t7pt6pt5 == (t7pt6pt5pt4 & int)}
  four_bytes = ->int{ t7pt6pt5pt4 == (t7pt6pt5pt4pt3 & int)}
  tail_bytes = ->int{ t7 == (t7pt6 & int)}
  i = 0
  # Main loop always points on head from one till four bytes.
  while i < data.size
    puts "i=#{i} #{data[i].to_s(2)}" if @d
    if one_byte[data[i]]
      i += 1
    elsif two_bytes[data[i]]
      return false if i+1 >= data.size
      return false if ! tail_bytes[data[i+1]]
      i += 2
    elsif three_bytes[data[i]]
      return false if i+2 >= data.size
      return false if ! tail_bytes[data[i+1]]
      return false if ! tail_bytes[data[i+2]]
      i += 3
    elsif four_bytes[data[i]]
      return false if i+3 >= data.size
      return false if ! tail_bytes[data[i+1]]
      return false if ! tail_bytes[data[i+2]]
      return false if ! tail_bytes[data[i+3]]
      i += 4
    else
      return false
    end
  end
  return true
end
