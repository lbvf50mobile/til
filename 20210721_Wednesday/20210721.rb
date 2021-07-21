# Leetcode: 838. Push Dominoes.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/610/week-3-july-15th-july-21st/3821/
# Accepted.
# Thanks God!
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
         j = ind - 1
         color(i,j)
       end
       dot = false
     end
   end
   if dot
     color(i,@d.size-1)
   end
   @d.join
end

def color(i,j)
  # p [i,j]
  if 0 == i && j == @d.size - 1
    return # do noting
  end
  if 0 == i && ?L == @d[j+1]
    color = @d[j+1]
    (i..j).each{|ind| @d[ind] = color}
    return
  end
  return nil if 0 == i && ?L != @d[j+1]
  return nil if @d.size - 1 == j && ?R != @d[i-1]
  if @d.size - 1 == j && ?R == @d[i-1]
    color = @d[i-1]
    (i..j).each{|ind| @d[ind] = color}
    return
  end
  if @d[i-1] == @d[j+1]
    (i..j).each{|ind| @d[ind] = @d[i-1]}
    return
  end
  return nil if ?L == @d[i-1] && ?R == @d[j+1]
  l = @d[i-1]
  r = @d[j+1]
  length = j - i + 1
  mid = i + length/2
  if length.even?
    (i...mid).each{|ind| @d[ind] = l}
    (mid..j).each{|ind| @d[ind] = r}
  else
    (i...mid).each{|ind| @d[ind] = l}
    (mid+1..j).each{|ind| @d[ind] = r}
  end
end
