require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/yM4uWYeQTHzYewW9H

puts "This is List"

require "minitest/autorun"

class ListNode
   attr_accessor :value, :next
   def initialize(val)
     @value = val
     @next = nil
   end
end

def removeKFromList(l,k)
    return nil if l.nil?
    head = l
    prev = nil
    curr = l
    nxt = l.next if l
    begin
        if k == curr.value
            if curr == head
                head = nxt
            else
                prev.next = nxt
            end
            curr.next = nil
        else
            prev = curr
        end
        curr = nxt
        nxt = nxt.next if nxt
    end while curr
    head
end

describe "List" do
    before do
        @first = ListNode.new(1)
        @second = ListNode.new(2)
        @first.next = @second
        @third = ListNode.new(3)
        @second.next = @third
    end
    it "should remove head" do
        ans = removeKFromList(@first,1)
        assert_equal 2, ans.value
    end
    it "should remove center" do
        ans = removeKFromList(@first,2)
        assert_equal 1, ans.value
        assert_equal 3, ans.next.value
    end
    it "should remove end" do
        ans = removeKFromList(@first,3)
        assert_equal 1, ans.value
        assert_equal 2, ans.next.value
    end
    it "should remove dobule head" do
        @first = ListNode.new(1)
        @second = ListNode.new(1)
        @first.next = @second
        @third = ListNode.new(3)
        @second.next = @third
        ans = removeKFromList(@first,1)
        assert_equal 3, ans.value
        assert_nil ans.next
    end
    it "should remove dobule bottom" do
        @first = ListNode.new(2)
        @second = ListNode.new(1)
        @first.next = @second
        @third = ListNode.new(1)
        @second.next = @third
        ans = removeKFromList(@first,1)
        assert_equal 2, ans.value
        assert_nil ans.next
    end
    it "should remove dobule center" do
        @first = ListNode.new(1)
        @second = ListNode.new(2)
        @first.next = @second
        @third = ListNode.new(2)
        @second.next = @third
        @fourth= ListNode.new(4)
        @third.next = @fourth
        ans = removeKFromList(@first,2)
        assert_equal 1, ans.value
        assert_equal 4, ans.next.value
    end
end