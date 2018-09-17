require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/BG94ZFECSNo6Kv7XW/comments
# https://youtu.be/WCm3TqScBM8
3.times do puts "" end
puts "kthLargestElement".cyan
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'


def kthLargestElement(nums, k)
    nums.sort.reverse[k-1]
end




require_relative 'tests/codesignal_tests.rb'
Tests = CodeSignalTests.tests

# https://youtu.be/WCm3TqScBM8
# Algorithms with Attitude: Introduction to Binary Heaps (MaxHeaps)
class Heap
    attr_reader :arr
    def initialize(arr = [])
        @arr = arr
        @i = 0
    end
    def head
        @arr[0]
    end
    def current
        @arr[@i]
    end
    def left_i
        2*@i + 1
    end
    def right_i
        2*@i + 2
    end
    def parent_i
        (@i - 1) / 2
    end
    def left
        @arr[left_i]
    end
    def right
        @arr[right_i]
    end
    def parent
        @arr[parent_i]
    end
    def left!
        @i = 2*@i + 1
        @arr[@i]
    end
    def rigth!
        @i = 2*@i + 2
        @arr[@i]
    end
    def parent!
        @i = (@i - 1) / 2
        @arr[@i]
    end
    def valid_vertex_max i
        head = @arr[i]
        left = @arr[2*i + 1]
        right = @arr[2*i + 2]
        if left.nil? && right.nil?
            return true
        elsif right.nil? && head >= left
            return true
        elsif left.nil? && head >= right
            return true
        elsif head >= right && head >= left
            return true
        end
        false
    end
    def insert a
        @arr.push a
        compare_and_swap (@arr.size - 1)  
    end
    def compare_and_swap current_index
        parrent_index = (current_index - 1) / 2
        return if parrent_index < 0 
        if @arr[current_index] >  @arr[parrent_index] 
            @arr[current_index] , @arr[parrent_index] = @arr[parrent_index] ,  @arr[current_index] 
        end
        compare_and_swap (parrent_index)
    end
    def valid_max?
        @arr.each_index.all?{|i| valid_vertex_max(i)}
    end
end




describe "Trees" do
    it "auto test" do
       Tests.each_slice(3)do |nums, k, a|
            assert_equal a, kthLargestElement(nums, k)
        end
    end

    it "Heap able to create" do
        assert_instance_of Heap, Heap.new([2,1])
        assert_equal [2,1], Heap.new([2,1]).arr
    end
    it "Heap should return the head" do
        assert_equal 2, Heap.new([2,1]).head
    end
    it "Return currend " do
        assert_equal 2, Heap.new([2,1]).current
    end 
    it "should understand left! and right! and parrent" do
        a = Heap.new([90,89,70,36,75,63,65,21,18,15])
        assert_equal 89, a.left!
        assert_equal 75, a.rigth!
        assert_equal 15, a.left!
        assert_equal 75, a.parent!
        assert_equal 89, a.parent!
        assert_equal 90, a.parent!
    end
    it "should understand left! and right! and parrent" do
        a = Heap.new([90,89,70,36,75,63,65,21,18,15])
        assert_equal 89, a.left
        assert_equal 70, a.right

        assert_equal 89, a.left!

        assert_equal 36, a.left
        assert_equal 75, a.right
        assert_equal 90, a.parent


        assert_equal 75, a.rigth!
        assert_equal 15, a.left!
        assert_nil a.left
        assert_nil a.right
        
        assert_equal 75, a.parent!
        assert_equal 89, a.parent!
        assert_equal 90, a.parent!
    end  
    it "should test vaild max heap" do
        a = Heap.new([90,89,70,36,75,63,65,21,18,15])
        assert a.valid_max?
    end
    it "should create valid tree" do
        a = Heap.new
        1100.times do
            a.insert(rand(20000))
        end
        assert a.valid_max?
    end
end
