# Leetcode: 174. Dungeon Game.
# https://leetcode.com/problems/dungeon-game/
# @param {Integer[][]} dungeon
# @return {Integer}
def calculate_minimum_hp(dungeon)
  # Top-Bottom DP. 
  #- `new_bag = (room + bag) < 0 ? 0 : (room + bag)`
  #- `add = room+bag > 0 ? 0 : -(room + bag)`
  @dun = dungeon
  @d = true
  @accum = Array.new(@dun.size).map{ Array.new(@dun[0].size)}
  @bags = Array.new(@dun.size).map{ Array.new(@dun[0].size)}
  rec(@dun.size-1,@dun[0].size-1) + 1
end

def rec(i,j)
  p "=======" if @d
  p [i,j] if @d
  return 0 if i < 0 || j < 0
  return @accum[i][j] if @accum[i][j]
  room = @dun[i][j]
  # Top.
  acc_top = rec(i-1,j)
  bag_top = get_bag(i-1,j)
  add_top = get_new_add(room,bag_top)
  bag_top = get_new_bag(room,bag_top)
  total_top = add_top + acc_top
  p %w{add_top, total_top, bag_top} if @d
  p [add_top,total_top, bag_top] if @d
  # Left.
  acc_left = rec(i,j-1)
  bag_left = get_bag(i,j-1)
  add_left = get_new_add(room,bag_left)
  bag_left = get_new_bag(room,bag_left)
  total_left = add_left + acc_left
  p %w{add_left, total_left, bag_left} if @d
  p [add_left,total_left, bag_left] if @d
  add,bag = 0,0
  if 0 == i && j != 0
    @bags[i][j] = bag_left
    @accum[i][j] = total_left
    return total_left
  end
  if 0 != i && j == 0
    @bags[i][j] = bag_top
    @accum[i][j] = total_top
    return total_top
  end
  if total_left == total_top
    if bag_top > bag_left
      add = total_top
      bag = bag_top
    else
      add = total_left
      bag = bag_left
    end
  elsif total_left < total_top
    add = total_left
    bag = bag_left
  else
    add = total_top
    bag = bag_top
  end
  p %w{add,bag} if @d
  p [add,bag] if @d
  @bags[i][j] = bag
  @accum[i][j] = add
  return add
end

def get_new_bag(room,bag)
  room + bag < 0 ? 0 : room + bag
end

def get_new_add(room, bag)
  room+bag >= 0 ? 0 : -(room + bag)
end

def get_bag(i,j)
  return 0 if i < 0 || j < 0
  @bags[i][j]
end

def get_accum(i,j)
  return 0 if i < 0 || j < 0
  @accum[i][j]
end



