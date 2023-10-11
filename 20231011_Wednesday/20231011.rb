# Leetcode: 2251. Number of Flowers in Full Bloom.
# https://leetcode.com/problems/number-of-flowers-in-full-bloom/
# = = = = = = = = = = = = = =
# Correct.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# TLE because most part Heap tasks in Leetcode in Ruby leads to TLE.
# @param {Integer[][]} flowers
# @param {Integer[]} people
# @return {Integer[]}
def full_bloom_flowers(flowers, people)
  # Based on:
  # https://leetcode.com/problems/number-of-flowers-in-full-bloom/solution/
  flowers.sort!
  sorted_people = people.sort
  dict = {}
  heap = MinHeap.new()
  i = 0
  sorted_people.each do |person|
    while i < flowers.size && flowers[i][0] <= person
      heap.push(flowers[i][1])
      i += 1
    end
    while (!heap.empty?) && heap.min < person
      heap.pop
    end
    dict[person] = heap.size
  end
  return people.map{|x| dict[x]}
end
