# Leetcode: 567. Permutation in String.
# https://leetcode.com/problems/permutation-in-string/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 230 ms, faster than 36.08% of Ruby online submissions for Permutation in String.
# Memory Usage: 212 MB, less than 17.53% of Ruby online submissions for Permutation in String.
# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  @d = false
  return false if s1.size > s2.size
  template = create_array
  s1.chars.each do |x|
    template[get_index(x)] += 1
  end
  current = create_array
  s2[0...s1.size].chars.each do |x|
    current[get_index(x)] += 1
  end
  puts "tmp = #{str_tmp(template)}" if @d
  puts "curr = #{str_tmp(current)}" if @d
  return true if template == current
  (1...s2.size + 1 - s1.size).each do |i|
    
    prv = s2[i-1]
    cr = s2[i+s1.size-1]
    puts "#{i} del=#{prv} add=#{cr}" if @d
    current[get_index(prv)] -= 1
    current[get_index(cr)] += 1
    puts "#{i} #{str_tmp(current)}" if @d
    puts "============" if @d
    return true if template == current
  end
  return false
end

def create_array
  Array.new(?z.ord - ?a.ord + 1,0)
end
def get_index x
  x.ord - ?a.ord
end

def str_tmp x
  (?a..?z).to_a.zip(x).map{|(a,b)| "#{a}#{b}"}.join(?,)
end


