# Leetcode: 838. Push Dominoes.
# https://leetcode.com/problems/push-dominoes/
# @param {String} dominoes
# @return {String}
def push_dominoes(dominoes)
  @d = dominoes
  @ans = " " * d.size
  (0...@d.size).each do |i|
    next if " " != @ans[i]
    if ?. == @d[i]
      c,j = find_r(i+1)
      if ?E == c
        color_with_dots(i,j)
      elsif ?L == c
        # All fall left including j.
        color_with_l(i,j)
      elsif ?R == c
        # All stay the same excluding j.
        color_with_dots(i,j-1)
      else
        raise "Start dot, unknown end."
      end
    elsif ?L == @d[i]
      @ans[i] = ?L
    elsif ?R == @d[i]
      c,j = find_r(i+1)
      if ?E == c
        # Fall right till the end.
        color_with_r(i,j)
      elsif ?L == c
        # Half with L and half with R. 
        color_half(i,j)
      elsif ?R == c
        # All all fall right excluding j.
        color_with_r(i,j-1)
      else
        raise "Start R, unknown end."
      end
    else
      raise "Unkonws Start."
    end
  end
  return @ans
end

def find_r(i)
  (i...@d.size).each do |j| 
    c = @d[j]
    [?L, j] if ?L == c
    [?R, j] if ?R == c
  end
  [?E, @d.size-1]
end

def color_with_dots(i,j)
  (i..j).each do |k|
    @ans[k] = ?.
  end
end
def color_with_l(i,j)
  (i..j).each do |k|
    @ans[k] = ?L
  end
end
def color_with_r(i,j)
  (i..j).each do |k|
    @ans[k] = ?R
  end
end
def color_half(i,j)
  l = j-i+1
  half = l/2
  if l.even?
    (i...(i+half)).each{|k| @ans[k] = ?L}
    (i+half..j).each{|k| @ans[k] = ?R}
  else
    (i...(i+half)).each{|k| @ans[k] = ?L}
    (i+half+1..j).each{|k| @ans[k] = ?R}
  end
end
