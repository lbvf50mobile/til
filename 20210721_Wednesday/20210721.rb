# Leetcode: Push Dominoes.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/610/week-3-july-15th-july-21st/3821/
# @param {String} dominoes
# @return {String}
def push_dominoes(dominoes)
   @d = dominoes.chars  
   i,j = nil, nil # indices of first and last dot in sequence.
   dot = false
   @d.each_with_index do |char,ind|
     if ?. == char
       i = ind if ! dot
       dot = true
     else
       if dot
         j = ind
         color(i,j)
       end
       dot = false
     end
   end
   @d.join
end

def color(i,j)
  if 0 == i && j == @d.size - 1
    return # do noting
  end
  if 0 == i
    color = @d[j+1]
    (i..j).each{|ind| @d[ind] = color}
    return
  end
  if @d.size - 1 == j
    color = @d[i-1]
    (i..j).each{|ind| @d[ind] = color}
    return
  end
  if @d[i-1] == @d[j+1]
    (i..j).each{|ind| @d[ind] = @d[i-1]}
    return
  end
  l = @d[i-1]
  r = @d[j+1]
  (i...i+(j-i+1)/2).each{|ind| @d[ing] = l }
  (i+(j-i+1)/2+1..j).each{|ind| @d[ing] = r }
end
