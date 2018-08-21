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
def possibleSums_copy(coins, quantity)
    set = Hash.new(false)
    set[0] = true
    coins.each_with_index do |var, idx|
        set.keys.each do |key|
            quantity[idx].times do |i|
                set[key + var*(i+1)] = true
            end
        end
    end
    set.size - 1
end

def possibleSums_iterate(coins, quantity)
    h = Hash.new(false)
    h[0] = 1
    coins.each_with_index do |value, index|
        h.keys.each do |key|
            quantity[index].times do |amount|
                h[key + value*(amount+1)] = 1
            end 
        end
    end
    h.size - 1
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
 it "should work copypast edition" do
    coins = [10, 50, 100] 
    quantity = [1, 2, 1]
    assert_equal possibleSums(coins, quantity), possibleSums_copy(coins, quantity)
    assert_equal possibleSums_copy(coins, quantity), possibleSums_iterate(coins, quantity)
 end
 it "should use iterate solution" do
    coins = [10, 50, 100] 
    quantity = [1, 2, 1]
    assert_equal possibleSums(coins, quantity), possibleSums_iterate(coins, quantity)
 end

 it "should solve #1 example" do
    coins = [10, 50, 100] 
    quantity = [1, 2, 1]
    assert_equal 9, possibleSums(coins, quantity)
 end
 it "should solve tasks automatically" do
    Tests.each_slice(3){ |coins, quantity, answer| test_function(coins, quantity, answer)}
 end
end