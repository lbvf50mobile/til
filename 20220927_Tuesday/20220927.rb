# Leetcode: 838. Push Dominoes.
# https://leetcode.com/problems/push-dominoes/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1916 ms, faster than 100.00% of Ruby online submissions for Push Dominoes.
# Memory Usage: 214.7 MB, less than 100.00% of Ruby online submissions for Push Dominoes.
# @param {String} dominoes
# @return {String}
def push_dominoes(dominoes)
  @d = false
  @do = dominoes
  @ans = " " * @do.size
  (0...@do.size).each do |i|
    next if " " != @ans[i]
    if ?. == @do[i]
      c,j = find_r(i+1)
      puts "[#{i},#{j}] [.,#{c}] Dot." if @d
      if ?E == c
        # All dots till the end.
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
      puts @ans if @d
    elsif ?L == @do[i]
      puts "[#{i}] [#{c}] L." if @d
      @ans[i] = ?L
      puts @ans if @d
    elsif ?R == @do[i]
      c,j = find_r(i+1)
      puts "[#{i},#{j}] [.,#{c}] R." if @d
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
      puts @ans if @d
    else
      raise "Unkonws Start."
    end
  end
  return @ans
end

def find_r(i)
  (i...@do.size).each do |j| 
    c = @do[j]
    return [?L, j] if ?L == c
    return [?R, j] if ?R == c
  end
  [?E, @do.size-1]
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
  # Several erros fixed. Left part R, Right part L.
  if l.even?
    (i...(i+half)).each{|k| @ans[k] = ?R}
    (i+half..j).each{|k| @ans[k] = ?L}
  else
    (i...(i+half)).each{|k| @ans[k] = ?R}
    @ans[i+half] = ?. # Fixed error. Must be dot in the middle.
    (i+half+1..j).each{|k| @ans[k] = ?L}
  end
end
