# Leetcode: 841. Keys and Rooms.
# https://leetcode.com/problems/keys-and-rooms/
# = = = = = = = = = = = = = =
# Accepted.
# Thank God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 163 ms, faster than 28.57% of Ruby online submissions for Keys and Rooms.
# Memory Usage: 211.2 MB, less than 85.71% of Ruby online submissions for Keys and Rooms.
# 2022.12.20 Daily Challenge.
# @param {Integer[][]} rooms
# @return {Boolean}
def can_visit_all_rooms(rooms)
  n = rooms.size
  counter = 0
  v = Array.new(n,false)
  q = [0]
  v[0] = true
  while ! q.empty?
    x = q.shift()
    counter += 1
    rooms[x].each do |y|
      next if v[y]
      v[y] = true
      q.push(y)
    end
  end
  counter == n
end
