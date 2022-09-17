# Leetcode: 336. Palindrome Pairs.
# https://leetcode.com/problems/palindrome-pairs/
# @param {String[]} words
# @return {Integer[][]}
# TLE
def palindrome_pairs(words)
  # Based on RyanGrayson's solution:
  # https://leetcode.com/problems/palindrome-pairs/discuss/2585442/Intuitive-Python3-or-HashMap-or-95-Time-and-Space-or-O(N*W2)
  b,r = {}, []
  @d = false
  words.each_with_index do |w,i|
    b[w.reverse] = i
  end
  words.each_with_index do |w,i|
    puts "#{w}, #{i}" if @d
    if b[w] && (b[w] != i)
      value = [i,b[w]]
      r.push(value) 
      puts "1. push #{value.inspect}." if @d
    end
    if ("" != w) && b[""] && (w == w.reverse)
      v1, v2 = [i,b[""]] , [b[""],i]
      r.push(v1)
      r.push(v2)
      puts "2. push #{v1.inspect}, #{v2.inspect}." if @d
    end
    (0...w.size).each do |j|
      tail = w[j..-1]
      head = w[0...j]
      next if tail.empty? || head.empty?
      if b[tail] && head == head.reverse
        puts "3. head=#{head} tail=#{tail}" if @d
        v =  [b[tail],i]
        r.push(v)
        puts "3. push #{v.inspect} #{tail} #{head}." if @d
      end
      if b[head] && tail == tail.reverse
        puts "4. head=#{head} tail=#{tail}" if @d
        v = [i,b[head]]
        r.push(v)
        puts "4. push #{v.inspect} #{tail} #{head}." if @d
      end
    end
  end
  r
end
