require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/gnZYGn367s4yaHvRr
3.times do puts "" end
puts "minimumOnStack".green
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'



def minimumOnStack(s)
    stack = []
    ret = []
    s.each do |word|
        case word
        when /push/
            num = word.split(" ")[1].to_i
            stack.push num
        when /pop/
            stack.pop
        else
            ret.push(stack.min)
        end
    end
    ret
end






describe "minimumOnStack" do
    it "shold works" do
        assert_equal [10, 5, 5, 5, 10], minimumOnStack(["push 10", "min", "push 5", "min", "push 8", "min", "pop", "min", "pop", "min"])
    end
  
end
