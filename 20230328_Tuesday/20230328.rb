# Leetcode: 983. Minimum Cost For Tickets.
# https://leetcode.com/problems/minimum-cost-for-tickets/
# @param {Integer[]} days
# @param {Integer[]} costs
# @return {Integer}
def mincost_tickets(days, costs)
  # Let's make it simple and primitive.
  # There are only 365 days, so it is a good idea to 366 elements array and just
  # fill this array with minimum values, so it would be like Climbing stairs
  # task.
  travel_days = Array.new(366,false)
  money = Array.new(366,0)
  days.each do |x|
    travel_days[x] = true
  end
  pay_range = ->(start,time,price){
    curr = money[start]
    if 0 == curr
      money[start] = price
    else
      money[start] = [price,curr].min
    end
    (start+1..[start+time-1,365].min).each do |j|
      if 0 == money[j]
        money[j] = curr + price
      else
        money[j] = [money[j],curr+price].min
      end
    end
  }
  (1..365).each do |i|
    next if ! travel_days[i]
    # One days pay.
    pay_range[i,1,costs[0]]
    # Seven days pay.
    pay_range[i,7,costs[1]]
    # 30 days pay.
    pay_range[i,30,costs[2]]
  end
  return money[days.last]
end
