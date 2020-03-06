p "alias x='ruby 20200306_Friday/20200306.rb'" 

# Leetcode: 509. Fibonacci Number. Leetcode: 1074 work with Prefix sum.

require "minitest/autorun"

def prefix_sum(arr,a,b)
    prefix = [0] * arr.size
    prefix[0] = arr[0]
    (1...arr.size).each do |i|
        prefix[i] = arr[i] + prefix[i-1]
    end
    a_val = a > 0 ? prefix[a-1] : 0
    b_val = prefix[b]
    b_val - a_val
end

def sum(arr,a,b)
    arr[a..b].reduce(:+)
end

describe "prefix sum array" do
    it "works" do
        a = [1,2,3,4,5]
        assert_equal prefix_sum(a,1,4),sum(a,1,4)
        assert_equal prefix_sum(a,0,4),sum(a,0,4)
    end
    it "all_possible_ranges" do
        a = [1,2,3,4,5]
        (0...a.size).each do |i|
            (i...a.size).each do |j|
                assert_equal prefix_sum(a,i,j),sum(a,i,j)
                assert_equal prefix_sum(a,i,j),sum(a,i,j)
            end
        end
    end
end
