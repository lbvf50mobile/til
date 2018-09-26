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
            ans.push [tmp[1..-2]]
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
    ans.each_index do |i|
        if Array == ans[i].class
            ans[i].push ans[i-1]
        end
    end
    ans = ans.reject.with_index{|x,i| x.class == Fixnum && ans[i+1].class == Array  }
    ans
  
end


describe "decodeString" do
    it "shold works" do
        assert_equal "abababab", decodeString("4[ab]")
    end
    it "work with splitter" do
        assert_equal [["zz", 4], 8, "dd", 5, "aa", ["[]", 7]], convert("4[zz]8dd5aa7[[]]")
    end
end
