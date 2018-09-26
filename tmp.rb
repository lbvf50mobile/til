require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/dYCH8sdnxGf5aGkez
3.times do puts "" end
puts "decodeString".cyan
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'



def decodeString(s)
    "abababab"
end
def convert(x)
    ans = []
    while !x.empty? do
        if /[[:digit:]]/ === x[0]
            counter = 0 
            x.chars.each do |z|
                if /[[:digit:]]/ === z
                    counter += 1
                else
                    break
                end
            end
            tmp = x[0...counter]
            ans.push tmp.to_i
            x = x[counter..-1]
        elsif ?[ == x[0]
            counter = 0 
            level = 0
            x.chars.each do |z|
                counter += 1
                if ?[ == z
                    level += 1
                end
                if ?] == z
                    level -= 1
                    break if 0 == level
                end
            end
            tmp = x[0...counter]
            ans.push tmp
            x = x[counter..-1]
        else
            counter = 0 
            x.chars.each do |z|
                if /[^[[:digit:]]\[]/ === z
                    counter += 1
                else
                    break
                end
            end
            tmp = x[0...counter]
            ans.push tmp
            x = x[counter..-1]

        end
    end
    ans
end


describe "decodeString" do
    it "shold works" do
        assert_equal "abababab", decodeString("4[ab]")
    end
    it "work with splitter" do
        assert_equal [44,"zzz",88], convert('44zzz88')
        assert_equal [44,"zzz",['sdf[]ss[]'],88], convert('44zzz[sdf[]ss[]]88')
        # assert_equal [[4,"zz"],"8dd5aa",[7,"[]"]], convert("4[zz]8dd5aa7[[]]")
    end
end
