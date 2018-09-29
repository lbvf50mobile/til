require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/MdHZFgZFERPPagfdD
3.times do puts "" end
puts "nextLarger".magenta
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'



def nextLarger(s)
    ans = []
    s.each_index do |i|
        tmp = s[i..-1]
        element = s[i]
        x = tmp.find{|e| e > element} || -1
        ans.push x

    end
    ans
end



describe "nextLarger" do
    it "shold works" do
        assert_equal [7, 8, 8, -1], nextLarger([6, 7, 3, 8])
    end
end
