require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/RvDFbsNC3Xn7pnQfH

puts "addTwoHugeNumbers".green

require "minitest/autorun"

class ListNode
   attr_accessor :value, :next
   def initialize(val)
     @value = val
     @next = nil
   end
end

def list_from_array array
  array = array.clone
  head = ListNode.new(array.shift)
  array.reduce(head) do |prev, current|
    tmp = ListNode.new(current)
    prev.next = tmp
    tmp
  end
  head
end

def array_from_list list
    answer = []
    pointer = list
    begin
        answer << pointer.value
        pointer = pointer.next
    end while pointer
    answer
end

def list_size list
    answer = 0
    pointer = list
    begin
        answer += 1
        pointer = pointer.next
    end while pointer
    answer
end

def pointer_to_index(list, index)
    index.times do
        list = list.next
    end
    list
end

def compare_lists(pointer, pointer0)
    begin
        return false if pointer.value != pointer0.value
        pointer = pointer.next
        pointer0 = pointer0.next
    end while pointer
    true
end
def list_reverse list
    prev = nil
    pointer = list
    begin
        very_old = prev
        prev = pointer
        pointer = pointer.next
        prev.next = very_old
    end while pointer
   prev
end
def addTwoHugeNumbers(a, b)
    # http://e-maxx.ru/algo/big_integer
    size_a = list_size a
    size_b = list_size b
    size_max = [size_a, size_b].max
    i = 0
    carry = 0
    base = 10000
    a = a_i = list_reverse(a)
    b = b_i = list_reverse(b)
    a_prev, b_prev = nil, nil
    while i < size_max || 1 == carry
        if(a_i.nil?)
            a_prev.next = ListNode.new(0)
            a_i = a_prev.next
        end
        
        bval = b_i.nil? ? 0 : b_i.value

        a_i.value += carry + bval
        carry = a_i.value >= base ? 1 : 0
        a_i.value -= base if 1 == carry

        i += 1
        a_prev = a_i
        b_prev = b_i
        a_i = a_i.next if a_i
        b_i = b_i.next if b_i
    end
    list_reverse(a)
end

def add_test_function(qa)
    a = list_from_array qa[0]
    b = list_from_array qa[1]
    c = array_from_list(addTwoHugeNumbers(a, b))
    assert_equal qa[2], c
end


describe "List" do
    before do
        @first = ListNode.new(1)
        @second = ListNode.new(2)
        @first.next = @second
        @third = ListNode.new(3)
        @second.next = @third
    end

    it "generate lists from array" do
        a = list_from_array([1,2,7])
        assert_equal 1, a.value
        assert_equal 2, a.next.value
        assert_equal 7, a.next.next.value
    end
    it "generate array from list" do
        a = list_from_array([10,11,12,42])
        array = array_from_list(a)
        assert_equal [10,11,12,42], array
        a = list_from_array([10])
        array = array_from_list(a)
        assert_equal [10], array
    end
    it "should show me the size of the list" do
        a = list_from_array([1,2,7])
        assert_equal 3, list_size(a)
    end
    it "should set mov pointer on list index" do
        a = list_from_array([0,10,200,3000])
        assert_equal 0, pointer_to_index(a,0).value
        assert_equal 10, pointer_to_index(a,1).value
        assert_equal 200, pointer_to_index(a,2).value
        assert_equal 3000, pointer_to_index(a,3).value
    end
    it "compare two lists" do
        same0 = list_from_array([0,10,200,3000])
        same1 = list_from_array([0,10,200,3000])
        dif0 = list_from_array([0,11,211,3111])
        dif1 = list_from_array([0,18,288,388])
        one = list_from_array([0])
        one1 = list_from_array([0])
        x = list_from_array([9])
        assert compare_lists(same0, same1)
        assert compare_lists(one, one1)
        refute compare_lists(dif0, dif1)
        refute compare_lists(one,x) 
    end
    it "revert list" do
        array =  [0]
        list = list_from_array(array)
        reverse = list_reverse(list)
        assert_equal array.reverse,  array_from_list(reverse)
    end
    it "revert list 2" do
        array =  [0, 1]
        list = list_from_array(array)
        reverse = list_reverse(list)
        assert_equal array.reverse,  array_from_list(reverse)
    end
    it "revert list 2" do
        array =  [0, 1,3,4,5,6]
        list = list_from_array(array)
        reverse = list_reverse(list)
        assert_equal array.reverse,  array_from_list(reverse)
    end
    it "should work with example from the url" do
        a = list_from_array [9876, 5432, 1999]
        b = list_from_array [1, 8001]
        c = array_from_list(addTwoHugeNumbers(a, b))
        assert_equal [9876,5434,0], c
    end
    it "test function" do
        qa = [
            [9876, 5432, 1999],
            [1, 8001],
            [9876,5434,0],
        ]
        add_test_function(qa)
    end
    it "test function1" do
        qa = [
            [123, 4, 5],
            [100, 100, 100],
            [223, 104, 105],
        ]
        add_test_function(qa)
    end
    it "test function" do
        qa = [
            [0],
            [0],
            [0],
        ]
        add_test_function(qa)
    end
    
end