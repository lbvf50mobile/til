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
# https://app.codesignal.com/interview-practice/task/MdHZFgZFERPPagfdD/solutions/9e3ENgdQQnB7kxTLN
def nextLargerStack(input)
    r = []
    s = []
    input.each_with_index do |value, index|
        while !s.empty? && value > s[-1][:value] do
            tmp = s.pop
            r[tmp[:index]] = value
        end
        s.push Hash.new({value: value, index: index})
    end

    s.each do |x|
        r[x[:index]] = -1
    end
    
    r
end




describe "nextLarger" do
    it "shold works" do
        assert_equal [7, 8, 8, -1], nextLarger([6, 7, 3, 8])
    end
    it "should check stack status" do
        100.times do 
            arr = (1...(rand(100)+10)).to_a.shuffle
            assert_equal nextLarger(arr),nextLarger(arr)
        end
    end
end
