require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/rMe9ypPJkXgk3MHhZ
puts "possibleSums".green

require "minitest/autorun"



def possibleSums(coins, quantity)
    sum_hash = {}
    h = {}
    coins.zip(quantity).each{|c,q| h[c] = h[c] ? h[c] + q : q }
    coins = h.keys
    quantity = h.values
    (0..coins.size-1).each{ |n| 
        rec_solver(coins.drop(n),quantity.drop(n),0,sum_hash)
    }
    sum_hash.size
end
def rec_solver(c,q,sum = 0,sum_hash)
    return false if c.empty?
    coin,amount = c[0],q[0]
    (1..amount).each do |x|
        s = coin*x + sum
        sum_hash[s] = 1
        (1..c.size-1).each{ |n| 
            rec_solver(c.drop(n),q.drop(n),s,sum_hash)
        }
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
    [1, 2],
    [50000, 2],
    50004,
]

describe "Hash" do

 it "should solve #1 example" do
    coins = [10, 50, 100] 
    quantity = [1, 2, 1]
    assert_equal 9, possibleSums(coins, quantity)
 end
 it "should solve tasks automatically" do
    Tests.each_slice(3){ |coins, quantity, answer| test_function(coins, quantity, answer)}
 end
end