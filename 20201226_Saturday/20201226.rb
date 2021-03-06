p "alias x='ruby 20201226_Saturday/20201226.rb'" 
p "Leetcode: 338. Counting Bits. (optimization)"
def test(num)
    (0..num).reduce(Array.new){|acc,x| acc.push(x.to_s(2).count(?1)) ; acc}
end

# Leetcode: 338. Counting Bits.
# https://leetcode.com/problems/counting-bits/
# Runtime: 172 ms, faster than 34.62% of Ruby online submissions for Counting Bits.
# Memory Usage: 215.3 MB, less than 42.31% of Ruby online submissions for Counting Bits.
# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
    return [0] if 1 > num
    return [0,1] if 1 == num
    arr = Array.new(num+1,0)
    arr[0] = 0;
    arr[1] = 1;
    (2..num).each do |i|
        if i.even?
            arr[i] = arr[i/2]
        else
            arr[i] = arr[i-1] + 1
        end
    end
    arr
end

# Leetcode: 338. Counting Bits.
# https://leetcode.com/problems/counting-bits/
# @param {Integer} num
# @return {Integer[]}
p test(0) == count_bits(0)
p test(1) == count_bits(1)
p test(5) == count_bits(5)
p test(2) == count_bits(2)
p test(3) == count_bits(3)
p test(4) == count_bits(4)
p test(7) == count_bits(7)

