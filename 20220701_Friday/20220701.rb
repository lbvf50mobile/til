# Leetcode: 1710. Maximum Units on a Truck.
# https://leetcode.com/problems/maximum-units-on-a-truck/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 399 ms, faster than 16.00% of Ruby online submissions for Maximum Units on a Truck.
# Memory Usage: 210.9 MB, less than 100.00% of Ruby online submissions for Maximum Units on a Truck.
# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  box_types = box_types.sort_by{|x| - x.last}
  p box_types
  units1 = 0 # ! Variables name confilct! Leadsto dubbuging.
  box_types.each do |amount, units|
    p [amount, units, truck_size]
    if truck_size > 0
      if amount < truck_size
        units1 += (amount * units)
        truck_size -= amount
      else
        units1 += (truck_size * units)
        truck_size = 0
      end
    end
    p units1
  end
  units1
end
