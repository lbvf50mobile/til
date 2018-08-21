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
def action_hash(array)
    array
end
def set_max(max_lex,test)
    max_lex[0] = test if test > max_lex[0]
    max_lex
end

def swapLexOrder(str, pairs)
    f_history = {}
    history = {}
    max_lex = [str]
    str_arr = str.chars
    swap_array = pairs
    rec_solve(str_arr:str_arr, swap_array: swap_array, max_lex: max_lex, history: history, f_history: f_history )
    max_lex[0]
end

def rec_solve(str_arr:nil, swap_array: nil, max_lex: nil, history: nil, f_history: f_history )
    return if f_history[[str_arr,swap_array]]
    f_history[[str_arr,swap_array]] = 1


    # First check without any changes
    action = action_hash([str_arr, nil, swap_array])
    if history[action].nil?
        set_max(max_lex,str_arr.join)
        history[action] = 1
        swap_array.size.times do |r|
            rec_solve(str_arr:str_arr, swap_array: swap_array.rotate(r), max_lex: max_lex, history: history, f_history: f_history )
        end
    end
    swap_array.each do |swap_pair|
        tmp = swap(str_arr,swap_pair)
        action = action_hash([str_arr, swap_pair, swap_array])
        if history[action].nil?
            set_max(max_lex,tmp.join)
            history[action] = 1
            swap_array.size.times do |r|
                rec_solve(str_arr:tmp, swap_array: swap_array.rotate(r), max_lex: max_lex, history: history, f_history: f_history )
            end
        end
    end
end


Tests = [
    "abdc",
    [[1, 4], [3, 4]],
    "dbca",
    "abdc",
    [[1,4], 
    [3,4]],
    "dbca",
    "abcdefgh",
    [[1,4], [7,8]],
    "dbcaefhg",
    #----------------
    "acxrabdz",
    [[1,3], [6,8], [3,8], [2,7]],
    "zdxrabca",
]

describe "Hash" do
 it "auto test" do
    Tests.each_slice(3){|str,pairs,ans| assert_equal ans, swapLexOrder(str, pairs)}
 end
end