p "alias x='ruby 20201226_Saturday/20201226.rb'" 
p "Leetcode: 338. Counting Bits. (optimization)"
def test(num)
    (0..num).reduce(Array.new){|acc,x| acc.push(x.to_s(2).count(?1)) ; acc}
end

def count_bits(num)
    return [] if 1 > num
    return [0] if 1 == num
    arr = Array.new(num+1,0)
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
p test(5) == count_bits(5)
p test(2) == count_bits(2)
p test(3) == count_bits(3)
p test(4) == count_bits(4)
p test(7) == count_bits(7)

