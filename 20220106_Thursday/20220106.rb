# Leetcode: 1094. Car Pooling.
# https://leetcode.com/problems/car-pooling/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 81 ms, faster than 75.00% of Ruby online submissions for Car Pooling.
# Memory Usage: 210.7 MB, less than 8.33% of Ruby online submissions for Car Pooling.
# Runtime: 123 ms, faster than 66.67% of Ruby online submissions for Car Pooling.
# Memory Usage: 210.4 MB, less than 33.33% of Ruby online submissions for Car Pooling.
# @param {Integer[][]} trips
# @param {Integer} capacity
# @return {Boolean}
def car_pooling(trips, capacity)
  @d = false
  cap = capacity
  car_table = Array.new(1002,0)
  enter_car_table = Array.new(1002).map{ Array.new }
  exit_car_table = Array.new(1002,0)
  trips.each do |(number,where_to_sit, where_to_go)|
    exit_car_table[where_to_go] += number
    enter_car_table[where_to_sit].push([number,where_to_go])
  end
  (1..1000).each do |stop|
    # First people need to exit from the car.
    if car_table[stop] != exit_car_table[stop]
      puts "#{stop} number of people to exit not equal predefined value."
      puts "#{car_table[stop]} != #{exit_car_table[stop]}" if @d
      return false
    end
    puts "#{stop}. #{car_table[stop]} exit." if @d
    cap += car_table[stop]
    car_table[stop] = 0
    if cap > capacity
      puts "#{stop} #{cap} > #{capacity} to many sits." if @d
      return false
    end
    # Now need to load people.
    enter_car_table[stop].each do |(number, where_to_go)|
      cap -= number
      puts "#{stop} number:#{number}, got_to:#{where_to_go} now cap is #{cap}." if @d
      if cap < 0 
        puts "#{stop} number:#{number}, got_to:#{where_to_go} to many people to sit." if @d
        return false
      end
      car_table[where_to_go] += number
    end
  end
  return true
end
