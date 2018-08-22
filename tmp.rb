require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/5vXzdE9yzjsoMZ9sk
3.times do puts "" end
puts "swapLexOrder".cyan
puts ""

require "minitest/autorun"

def dsu(u)
    (0..u.size-1).each do |i|
        next if u[i].nil?
        (0..u.size-1).each do |j|
            next if i == j
            next if u[j].nil?
            if u[i].any?{|x| u[j].include?(x)}
                u[i] = (u[i] + u[j]).uniq
                u[j] = nil
            end
        end
    end
    u.compact.map{|x| x.sort}
end

def swapLexOrder(str, pairs)
    pairs = dsu(pairs)
    str = str.chars
    # Save array of [indexes,char_by_these_indexes]
    pairs = pairs.map do |ids|
        chars = ids.reduce([]){|s,i| s.push(str[i-1]); s}
        [ids.map{|x| x-1},chars.sort.reverse]
    end
    pairs.each do |x|
        x[0].each_with_index do |pos,i|
            str[pos] = x[1][i]
        end
    end
    str.join
end

Tests = [

    "fixmfbhyutghwbyezkveyameoamqoi",
    [[8,5], 
 [10,8], 
 [4,18], 
 [20,12], 
 [5,2], 
 [17,2], 
 [13,25], 
 [29,12], 
 [22,2], 
 [17,11]],
 "fzxmybhtuigowbyefkvhyameoamqei",

]

describe "Hash" do
 it "auto test" do
    Tests.each_slice(3){|str,pairs,ans| assert_equal ans, swapLexOrder(str, pairs)}
 end
end

