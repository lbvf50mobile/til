require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/rMe9ypPJkXgk3MHhZ
puts "possibleSums".green

require "minitest/autorun"

# [5,7],[1,2] ==> [5,7,7]
def plain_array(coins: [], quantity: [])
    coins.zip(quantity).map{|value,amount| Array.new(amount,value) }.reduce(:+)
end

SumsHash = {}
def possibleSums(coins, quantity)
    h = {}
    coins.zip(quantity).each{|c,q| h[c] = h[c] ? h[c] + q : q }
    coins = h.keys
    quantity = h.values
    (0..coins.size-1).each{ |n| 
        rec_solver(coins.drop(n),quantity.drop(n),0)
    }
    p SumsHash
    SumsHash.size
end
def rec_solver(c,q,sum = 0)
    return false if c.empty?
    coin,amount = c[0],q[0]
    (1..amount).each do |x|
        s = coin*x + sum
        SumsHash[s] = 1
        rec_solver(c.drop(1),q.drop(1), s)
    end
end

def test_function (coins, quantity, answer)
    assert_equal answer, possibleSums(coins, quantity)
end

Tests = [
    [10, 50, 100],
    [1, 2, 1],
    9,
    [10, 50, 100, 500],
    [5, 3, 2, 2],
    122,
    [1],
    [5],
    5,
    [1, 1],
    [2, 3],
    5,
    #[1, 2],
    # [50000, 2],
    # 50004,
]

describe "Hash" do
 it "true" do
    assert true
 end
 it "exted array do" do
    coins = [5,2]
    quantity = [1,2]
    assert [5,2,2], plain_array(coins: coins, quantity: quantity)
 end
 it "should solve #1 example" do
    coins = [10, 50, 100] 
    quantity = [1, 2, 1]
    assert_equal 9, possibleSums(coins, quantity)
 end
 it "should solve tasks automatically" do
    skip
    Tests.each_slice(3){ |coins, quantity, answer| test_function(coins, quantity, answer)}
 end
end