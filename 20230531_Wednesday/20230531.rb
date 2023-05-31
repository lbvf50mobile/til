# Leetcode: 1396. Design Underground System.
# https://leetcode.com/problems/design-underground-system/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 199 ms, faster than 100.00% of Ruby online submissions for Design
# Underground System.
# Memory Usage: 218.4 MB, less than 100.00% of Ruby online submissions for
# Design Underground System.
# 2023.05.31 Daily Challenge.
class UndergroundSystem
    def initialize()
      @in = {}
      @total = {}
      @t1 = {}
        
    end


=begin
    :type id: Integer
    :type station_name: String
    :type t: Integer
    :rtype: Void
=end
    def check_in(id, station_name, t)
      @in[id] = [station_name, t]
    end


=begin
    :type id: Integer
    :type station_name: String
    :type t: Integer
    :rtype: Void
=end
    def check_out(id, station_name, t)
      x = @in[id]
      raise "No such customer." if ! x
      @in[id] = nil
      total = t - x[1]
      a = x[0]
      b = station_name
      @total[a] ||= {}
      @total[a][b] ||= []
      @total[a][b].push(total)
      arr = @total[a][b]
      ans = arr.sum.fdiv(arr.size) 
      @t1[a] ||={}
      @t1[a][b] = ans
    end


=begin
    :type start_station: String
    :type end_station: String
    :rtype: Float
=end
    def get_average_time(start_station, end_station)
      a,b = start_station, end_station
      raise "No Start station." if ! @t1[a]
      raise "No end station." if ! @t1[a][b]
      return @t1[a][b]
    end


end

# Your UndergroundSystem object will be instantiated and called as such:
# obj = UndergroundSystem.new()
# obj.check_in(id, station_name, t)
# obj.check_out(id, station_name, t)
# param_3 = obj.get_average_time(start_station, end_station)
