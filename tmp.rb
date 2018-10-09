require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/ndve2n4KH7dPBksLh
3.times do puts "" end
puts "nearestGreater".cyan
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'

require 'ostruct'
def find_neares_right_max_index(a)
    storage = []
    answer = []
    a.each_with_index do |v,i|
        while !storage.empty? && v > a[storage.last] do
            j = storage.last
            answer[j] = i
            storage.pop
        end
        storage.push i
    end
    storage.each do |j|
        answer[j] = -1
    end
    answer
end

def nearestGreater(s)
    answer = []
    right = find_neares_right_max_index(s)
    left =  find_neares_right_max_index(s.reverse).reverse.map{|x| -1 == x ? -1 : s.size - 1 - x}
    s.each_index do |i|
        ri = right[i]
        li = left[i]
        dri = (i - ri).abs
        dli = (i - li).abs
        if -1 == ri && -1 == li
            answer[i] = -1
        elsif  -1 != ri && -1 == li
            answer[i] = ri
        elsif -1 == ri && -1 != li
            answer[i] = li
        elsif dri < dli
            answer[i] = ri
        else
            answer[i] = li
        end
    end
    answer
end



# to Read: https://wcipeg.com/wiki/All_nearest_smaller_values

def nearestGreater_naive(s)
    ans = []
    s.each_index do |i|
        left = s[0...i]
        right = s[i+1..-1]
        right_index = right.index{|x| x > s[i]}
        left_index = left.rindex{|x| x > s[i]}
        ret = -1
        left_comp = left_index ? left.size - 1 - left_index : 0
        if right_index.nil? && left_index.nil?
            ret = -1
        elsif right_index && left_index.nil?
            ret = right_index + i + 1
        elsif right_index.nil? && left_index
            ret = left_index
        elsif right_index < left_comp
            ret = right_index + i + 1
        elsif right_index > left_comp
            ret = left_index
        else
            ret = left_index
        end
        ans.push ret
    end
    
    ans
end






describe "countClouds" do
    it "shold works" do
        a = [1, 4, 2, 1, 7, 6]
        assert_equal [1, 4, 1, 2, -1, 4], nearestGreater_naive(a)
        assert_equal [1, 4, 1, 2, -1, 4], nearestGreater(a)
    end
  
end
