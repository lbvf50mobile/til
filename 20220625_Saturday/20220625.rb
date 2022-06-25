# Leetcode: 665. Non-decreasing Array.
# https://leetcode.com/problems/non-decreasing-array/
# @param {Integer[]} nums
# @return {Boolean}
# fixed Error: [-1,4,2,3]
# Error: [5,7,1,8]
def check_possibility(nums)
  @d = false
  a = nums
  puts a.inspect if @d
  counter = 0
  (1...nums.size).each do |i|
    puts "a[#{i}]=#{a[i]}" if @d
    if nums[i-1] <= nums[i]
      puts "#{a[i-1]} <= #{a[i]}; do nothing." if @d
      # Just do nothing.
    elsif 0 == counter
      if 0 == i-1
        puts "#{a[i-1]} <= #{a[i]}; First element is too big. Change it." if @d
        a[i-1] = - (10**7)
      elsif nums.size-1 == i
        puts "#{a[i-1]} <= #{a[i]}; Last elemen it too small. Do nothing." if @d
        # Just do noting.
      elsif a[i-2] <= a[i] # !
        puts "#{a[i-2]} <= #{a[i]}; Possible go fix." if @d
        a[i-1] = a[i]
      else
        puts "#{a[i-2]} <= #{a[i]}; ImmPossible go fix." if @d
        return false
      end
      counter += 1
    else
      puts "#{a[i-1]} <= #{a[i]}; counter=#{counter} return false." if @d
      return false
    end
  end
  return true
end
