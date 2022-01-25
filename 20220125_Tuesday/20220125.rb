# Leetcode: 941. Valid Mountain Array.
# https://leetcode.com/problems/valid-mountain-array/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 151 ms, faster than 28.13% of Ruby online submissions for Valid Mountain Array.
# Memory Usage: 211.7 MB, less than 84.38% of Ruby online submissions for Valid Mountain Array.
# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  @d = false
  @a = arr
  @size = arr.size
  puts "#{@a.inspect} size: #{@size}" if @d
  return false if @size < 3
  state_prev = 0
  state_cur = get_state(1)
  return false if ! state_cur
  return false if 2 == state_cur 
  rules = [ # Previous state for current one. Current one is an index.
    ->x{ 0 == x},
    ->x{ 0 == x},
    ->x{ 1 == x || 2 == x} 
  ]   
  (2...@size).each do |i|
    puts "in #{state_prev} #{state_cur} a[#{i}] = #{@a[i]}" if @d
    puts "#{@a.inspect}" if @d
    puts "#{" "*(3*i+1)}^" if @d
    state_prev = state_cur
    state_cur = get_state(i)
    return false if ! state_cur
    return false if ! rules[state_cur][state_prev]
    puts "out #{state_prev} #{state_cur}" if @d
    puts "-------------" if @d
  end
  2 == state_cur
end

def get_state(i)
  return 0 if 0 == i
  return 0 if i != @size-1 && @a[i-1] < @a[i] && @a[i] < @a[i+1]
  return 1 if i != @size-1 && @a[i-1] < @a[i] && @a[i] > @a[i+1]
  return 2 if @a[i-1] > @a[i]
  return false
end
