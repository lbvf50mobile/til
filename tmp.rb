require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/5vcioHMkhGqkaQQYt

puts "rearangeLastN".green

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



 def rearrangeLastN(l, n)
    return l if l.nil?
    size = list_size(l)
    return l if size <= n || 0 == n 
    head = {h: l, t: pointer_to_index(l, size - n - 1)}
    tail = {h: head[:t].next, t: pointer_to_index(head[:t].next, n - 1)}
    tail[:t].next = head[:h]
    head[:t].next = nil
    tail[:h]
 end

describe "List" do
    it "should implement it's tast with s=5 n=1" do
        l = list_from_array([1,2,3,4,5])
        n = 1
        assert_equal [ 5, 1, 2, 3, 4], array_from_list(rearrangeLastN(l, n))
    end
    it "should implement it's tast with s=5 n=2" do
        l = list_from_array([1,2,3,4,5])
        n = 2
        assert_equal [4, 5, 1, 2, 3], array_from_list(rearrangeLastN(l, n))
    end
    it "should implement it's tast with s=5 n=3" do
        l = list_from_array([1,2,3,4,5])
        n = 3
        assert_equal [3, 4, 5, 1, 2], array_from_list(rearrangeLastN(l, n))
    end
    it "should implement it's tast with s=5 n=4" do
        l = list_from_array([1,2,3,4,5])
        n = 4
        assert_equal (2..5).to_a + [1], array_from_list(rearrangeLastN(l, n))
    end
    it "should implement it's tast with s=5 n=4" do
        l = list_from_array([1,2,3,4,5])
        n = 5
        assert_equal (1..5).to_a , array_from_list(rearrangeLastN(l, n))
    end
    it "should implement it's tast with s=5 n=0" do
        l = list_from_array([1,2,3,4,5])
        n = 0
        assert_equal (1..5).to_a , array_from_list(rearrangeLastN(l, n))
    end
    it "should implement it's tast with nil n=0" do
        l = nil
        n = 0
        assert_nil rearrangeLastN(l, n)
    end
end