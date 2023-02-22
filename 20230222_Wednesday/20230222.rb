# Leetcode: 1011. Capacity To Ship Packages Within D Days.
# https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/
# @param {Integer[]} weights
# @param {Integer} days
# @return {Integer}
def ship_within_days(weights, days)
  @w = weights
  @min = @w.max
  @max = @w.sum
  p @w
  p ["min", @min]
  p ["max", @max]

  return @max if 1 == days
  l,r = @min, @max
  while l <= r
    m = l + (r-l)/2
    p "left #{l}, right #{r}, middle #{m}."
    val = get_time(m)
    p "Days needed: #{val}"
    return m if days == val
    if val < days
      l = m + 1
    else
      r = m - 1
    end
  end
  raise "This colud not happens."
end

# Calculate days need to move all cargo.
def get_time(cap)
  info = ["cap = #{cap}"]
  days = 0
  cargo = 0
  str = ""
  @w.each do |v|
    tmp = cargo + v
    if tmp == cap
      days += 1
      str += "#{v}"
      info.push("Day: #{days}=#{cargo} #{str}")
      cargo = 0
      next
    end
    if tmp >= cap
      days += 1
      info.push("Day: #{days}=#{cargo} #{str}")
      str = ""
      str += "#{v}"
      cargo = v
      next
    end
    if tmp < cap
      str += "#{v} "
      cargo = tmp
      next
    end
  end
  if 0 != cargo
    days += 1
    info.push("Day: #{days}=#{cargo} #{str}")
  end
  return days
end
