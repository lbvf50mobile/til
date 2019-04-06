p "alias x='ruby 20190406_Saturday/20190406.rb'" 

# Ruby Greedy Algorithm to find Minimum number of Coins.

# https://www.geeksforgeeks.org/greedy-algorithm-to-find-minimum-number-of-coins/

coins = [1,2,5,10]
value = rand(100)

def minCoins(coins, value)
    res = []
    while value > 0 do
        max = coins.select{|x| x <= value}.max
        res.push(max)
        value -= max
    end
    res
end
require "colorize"
puts "value: #{value}".green
puts "coins: #{coins}".green
p minCoins(coins, value).chunk_while{|i,j| i==j}
    .map{|y| y.size > 1 ? "#{y.size}x(#{y.first})" : y.first.to_s }
