# Leetcode: 1845. Seat Reservation Manager.
# https://leetcode.com/problems/seat-reservation-manager/
# = = = = = = = = = = = = = =
# Correct.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = = 
# TLE.
# I treat TLE as a normal result when working with Containers::MinHeap in
# Leetcode. Ruby implementation of MinHeap is tremendously slow.
# 2023.11.06 Daily Challenge.
class SeatManager

=begin
    :type n: Integer
=end
    def initialize(n)
      @x = MinHeap.new((1..n).to_a)
    end


=begin
    :rtype: Integer
=end
    def reserve()
      @x.pop
    end


=begin
    :type seat_number: Integer
    :rtype: Void
=end
    def unreserve(seat_number)
      @x.push(seat_number)
    end


end

# Your SeatManager object will be instantiated and called as such:
# obj = SeatManager.new(n)
# param_1 = obj.reserve()
# obj.unreserve(seat_number)
