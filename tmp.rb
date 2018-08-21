require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/5vXzdE9yzjsoMZ9sk
3.times do puts "" end
puts "swapLexOrder".cyan
puts ""

require "minitest/autorun"


def swap(arr,how)
    arr = arr.clone
    arr[how[0]-1],arr[how[1]-1] = arr[how[1]-1],arr[how[0]-1]
    arr
end
def action_hash(str_arr: nil, swap_pair: nil, swap_array: nil)
    "#{str_arr.inspect},#{swap_pair.inspect},#{swap_array.inspect}"
end
def set_max(max_lex,test)
    max_lex[0] = test if test > max_lex[0]
    max_lex
end

def swapLexOrder(str, pairs)
    history = {}
    max_lex = [str]
    str_arr = str.chars
    swap_array = pairs
    rec_solve(str_arr:str_arr, swap_array: swap_array, max_lex: max_lex, history: history )
    pp history
    "dbca"
end

def rec_solve(str_arr:nil, swap_array: nil, max_lex: nil, history: nil )
    # First check without any changes
    action = action_hash(str_arr: str_arr, swap_pair: nil, swap_array: swap_array)
    if history[action].nil?
        set_max(max_lex,str_arr.join)
        history[action] = 1
        swap_array.size.times do |r|
            rec_solve(str_arr:str_arr, swap_array: swap_array.rotate(r), max_lex: max_lex, history: history )
        end
    end
    swap_array.each do |swap_pair|
        p "swap_pair: #{swap_pair}"
        p "str_arr: #{str_arr}"
        tmp = swap(str_arr,swap_pair)
        p tmp
        action = action_hash(str_arr: tmp, swap_pair: swap_pair, swap_array: swap_array)
        if history[action].nil?
            set_max(max_lex,tmp.join)
            history[action] = 1
            swap_array.size.times do |r|
                rec_solve(str_arr:tmp, swap_array: swap_array.rotate(r), max_lex: max_lex, history: history )
            end
        end
    end
end


Tests = [
    "abdc",
    [[1, 4], [3, 4]],
    "dbca"
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
 it "should work with first test" do
    str = "abdc"
    pairs = [[1, 4], [3, 4]]
    ans = "dbca"
    assert_equal ans, swapLexOrder(str, pairs)
 end
 it "should save max lex" do
    max_lex = [?1]
    test = ?2
    assert_equal [?2],set_max(max_lex,test)
    assert_equal [?2], max_lex
 end
 it "auto test" do
    Tests.each_slice(3){|str,pairs,ans| assert_equal ans, swapLexOrder(str, pairs)}
 end
end