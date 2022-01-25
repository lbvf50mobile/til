# Leetcode: 941. Valid Mountain Array.
# https://leetcode.com/problems/valid-mountain-array/
# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  @a = arr
  @size = arr.size
  return false if @size < 3
  state_prev = 0
  state_cur = get_state(1)
  return false if ! state_cur
  return false if 2 == state_cur 
  rules = [ # Previous state for current one. Current one is an index.
    ->x{ 0 == x},
    ->x{ 0 == x},
    ->x{ 1 == x && 2 == x} 
  ]   
  (2...@size).each do |i|
    tmp = state_prev
    state_prev = state_cur
    state_cur = get_state(i)
    return false if ! state_cur
    return false if rules[state_cur][tmp]
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
