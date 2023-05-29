# Leetcode: 1603. Design Parking System.
# https://leetcode.com/problems/design-parking-system/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 118 ms, faster than 76.00% of Ruby online submissions for Design
# Parking System.
# Memory Usage: 211.3 MB, less than 8.00% of Ruby online submissions for Design
# Parking System.
# 2023.05.29 Daily Challenge.
class ParkingSystem

=begin
    :type big: Integer
    :type medium: Integer
    :type small: Integer
=end
    def initialize(big, medium, small)
      @x = [big, medium, small]
        
    end


=begin
    :type car_type: Integer
    :rtype: Boolean
=end
    def add_car(car_type)
      t = car_type - 1
      if @x[t] <= 0
        return false
      else
        @x[t] -= 1
        return true
      end
    end


end

# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem.new(big, medium, small)
# param_1 = obj.add_car(car_type)
