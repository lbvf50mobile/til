require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/5vXzdE9yzjsoMZ9sk
puts "swapLexOrder".red

require "minitest/autorun"


def swap(arr,how)
    arr = arr.clone
    arr[how[0]],arr[how[1]] = arr[how[1]],arr[how[0]]
end
def action_hash(str_arr: nil, swap_pair: nil, swap_array: nil)
    "#{str_arr.inspect},#{swap_pair.inspect},#{swap_array.inspect}"
end


Tests = [

]

describe "Hash" do
 it "works" do
    assert true
 end
 it "should swap to elements" do
    assert_equal [2,1], swap([1,2],[0,1])
 end
 it "should create action hash" do
    str_arr = [?a,?b]
    swap_pair = [0,1]
    swap_array =[[0,1],[0,2]]
    assert_equal "#{str_arr.inspect},#{swap_pair.inspect},#{swap_array.inspect}",
    action_hash(str_arr: str_arr, swap_pair: swap_pair, swap_array: swap_array)
 end
end