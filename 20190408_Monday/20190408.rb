p "alias x='ruby 20190408_Monday/20190408.rb'" 

# Ruby O(n) switchLight problem solution example.

# N candles are placed in a row, some of them are initally lit.
# For each cnadle from the 1st to the Nth the following arogrithm is applied
# if the observed candle is lit then states of this cahle and all candles before it
# are changed to the oppostie. Which cancles will remain lit. after applying the algoringm to all
# candles in the order they are places in the line?

def switch_lights a
    number = 0
    a.reverse.map{|x|
        if x == 1
            number += 1
        end
        (x+number)%2
    }.reverse
end

test_array = [
    {input: [1, 1, 1, 1, 1], output: [0, 1, 0, 1, 0]},
    {input: [0, 0], output: [0, 0]},
    {input: [1, 0, 0, 1, 0, 1, 0, 1], output: [1, 1, 1, 0, 0, 1, 1, 0]},
    {input: [1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1], output: [1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0]},
    {input: [1, 1, 0, 0, 1], output: [0, 1, 1, 1, 0]},
    {input: [1, 1, 1, 0, 1, 1, 1], output: [1, 0, 1, 1, 0, 1, 0]},
]

require "minitest/autorun"

describe "switch lights" do
    it "work fine" do
        test_array.each do |x|
            assert_equal x[:output], switch_lights(x[:input])
        end
    end
end
