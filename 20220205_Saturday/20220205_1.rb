# Leetcode: 954. Array of Doubled Pairs.
# https://leetcode.com/problems/array-of-doubled-pairs/
# @param {Integer[]} arr
# @return {Boolean}
# Fails: [2,1,2,1,1,1,2,2]
def can_reorder_doubled(arr)
  return false if arr.size.odd?
  counter = arr.each_with_object(Hash.new){|el,o| o[el]||=0; o[el]+=1;}
  if counter[0]
    return false if counter[0].odd?
    return false if counter.keys.size - 1 !=  (arr.size - counter[0])
    pairs = counter[0]/2
    counter.keys.each do |el|
      if 0 != el
        pairs += 1 if counter[el*2]
      end
    end
    return pairs >= arr.size/2
  else
    return false if counter.keys.size != arr.size
    pairs = 0
    counter.keys.each do |el|
      pairs += 1 if counter[el*2]
    end
    return pairs >= arr.size/2
  end
end
