# Leetcode: 2391. Minimum Amount of Time to Collect Garbage.
# https://leetcode.com/problems/minimum-amount-of-time-to-collect-garbage/
# @param {String[]} garbage
# @param {Integer[]} travel
# @return {Integer}
def garbage_collection(garbage, travel)
  # Using 3 tracks.
  @g, @t  = garbage, travel
  ans = 0
  # ! Need to calculate last point!
  [?M, ?P, ?G].each do |tp|
     tmp = calc_for_type(tp)
     p [tp, tmp]
     ans += tmp
  end
  return ans
end

def calc_for_type(tp)
  time = 0
  @g.each_with_index do |v, i|
    time += v.count(tp)
    if i > 0 
      time += @t[i-1]
    end
  end
  return time
end

