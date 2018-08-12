require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/yM4uWYeQTHzYewW9H

puts "isListPalindrome"

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
def isListPalindrome(l)
    return true unless l
    size = list_size(l)
    return true if 1 == size
    compare = (size/2).floor
    head = l
    reverse = pointer_to_index(l,compare)
    first_end = size.even? ? pointer_to_index(l,compare-1) : pointer_to_index(l,compare-2)
    first_end.next = nil
    reverse = list_reverse(reverse)
    return compare_lists(head, reverse)
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
    it "it should be oke with one element length" do
        l = list_from_array([0])
        assert isListPalindrome(l)
    end
    it "if sould return false of false" do
        l = nil
        assert isListPalindrome(l)
    end
    it "shold work on 2 elements" do
        l = list_from_array([0,0])
        assert isListPalindrome(l)
        l = list_from_array([0,1])
        refute isListPalindrome(l)
    end
    it "shold work on 3 elements" do
        l = list_from_array([0,1,0])
        assert isListPalindrome(l)
        l = list_from_array([0,1,1])
        refute isListPalindrome(l)
    end
    it "should work on random even value" do
        left = Array.new(rand(560)+1){ rand(10)}
        right = left.reverse
        all = left + right
        l = list_from_array(all)
        assert isListPalindrome(l)
        all = [1] + left + right + [2]
        l = list_from_array(all)
        refute isListPalindrome(l)
    end
    it "should work on random ODD value" do
        left = Array.new(rand(560)+1){ rand(10)}
        right = left.reverse
        all = left + [rand(10)] + right
        l = list_from_array(all)
        assert isListPalindrome(l)
        all = [1] + left  + [rand(10)] + right + [2]
        l = list_from_array(all)
        refute isListPalindrome(l)
    end
end