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
    def delete_root
        if @arr.empty?
            return nil
        end
        if @arr.size == 1
            return @arr.pop
        end
        if @arr.size > 1
            @arr[0], @arr[-1] = @arr[-1], @arr[0]
            ans = @arr.pop

            goes_down(0)

            return ans

        end
    end
    def goes_down i
        curr = @arr[i]
        left = @arr[2*i + 1]
        left_i = 2*i + 1
        right = @arr[2*i + 2]
        right_i = 2*i + 2
        if left.nil? && right.nil?
            return 
        elsif right.nil?
            if left > curr
                @arr[i], @arr[left_i] = @arr[left_i], @arr[i]
                goes_down left_i
            end 
        elsif right && left
            if curr < [left,right].max
                if left == [left,right].max
                    @arr[i], @arr[left_i] = @arr[left_i], @arr[i]
                    goes_down left_i
                else
                    @arr[i], @arr[right_i] = @arr[right_i], @arr[i]
                    goes_down right_i
                end
            end
        end
    end
end

def generate n
    ans = Array.new(n)
    ans.map{|x| rand(20000)}
end

def kthLargestElementMaxHeap(nums, k)
    a = Heap.new
    nums.each do |x|
        a.insert x
    end
    ans = a.arr[0]
    (k-1).times do
        a.delete_root
        ans = a.arr[0]
    end
    ans
end

class MinHeap
    attr_reader :arr
    def initialize 
        @arr = []
    end
    def insert x
        @arr.push x
        up(@arr.size - 1)
    end
    def up i
        parent_i = ((i-1)/2).abs
        return if 0 == i
        @arr[i], @arr[parent_i] = @arr[parent_i], @arr[i] if @arr[parent_i] > @arr[i]
        up parent_i 
    end
end

def min_heap_head(arr)
    m = MinHeap.new
    arr.each{|x| m.insert x}
    m.arr[0]
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
        puts "size of heap: #{a.arr.size}".cyan
        assert a.valid_max?
    end
    it "should delete root" do
        a = Heap.new
        n = 500
        n.times do
            a.insert(rand(20000))
        end
        n.times do
            puts "size of heap: #{a.arr.size}".green if 0 == a.arr.size % 100
            max = a.arr.max
            assert_equal max, a.delete_root
        end
        puts "size of heap: #{a.arr.size}".cyan
        assert a.valid_max?
    end
    it "Generate random array" do
        z = generate(50)
        assert_kind_of Array,z 
        assert_equal 50, z.size
        assert_kind_of 1.class, z[25]
    end
    it "find k tht largest in two ways" do
        100.times do
            size = 20 + rand(3000)
            elem = 1 + rand(size/2)
            array = generate(size)
            max = kthLargestElement(array, elem)
            assert_equal max, kthLargestElement(array, elem)
            assert_equal max, kthLargestElementMaxHeap(array, elem)
        end
    end
    it "find min value by mean heap" do
        10.times do
            arr = generate(30_000)
            min = arr.min
            assert_equal min, min_heap_head(arr)
        end
    end
end
