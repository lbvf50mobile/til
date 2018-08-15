require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/XP2Wn9pwZW6hvqH67

puts "reverseNodesInKGroups".cyan

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


def reverse_chunk! hash
    hash[:t].next = nil
    list_reverse(hash[:h])
    hash[:h],hash[:t] =  hash[:t],hash[:h]
    hash
end

def reverseNodesInKGroups(l,k)
    return l if 1 == k
    size = list_size(l)
    # first rotate
    head = {h: l, t: pointer_to_index(l,k-1)}
    tail = {h: head[:t].next}
    reverse_chunk!(head)
    head[:t].next = tail[:h]
    size -= k
    while ( size >= k)
        center = {h: head[:t].next, t: pointer_to_index(head[:t].next, k-1)}
        tail = {h: center[:t].next}
        reverse_chunk!(center)
        center[:t].next = tail[:h]
        head[:t].next = center[:h]
        head[:t] = center[:t]
        size -= k
    end
    head[:h]
end
 

describe "List" do
  it "should do noting when k = 1" do
    l = list_from_array((1..5).to_a)
    k = 1
    a = reverseNodesInKGroups(l, k)
    assert_equal (1..5).to_a, array_from_list(a)
  end

  it "Need just rotate all array" do
    l = list_from_array((1..5).to_a)
    k = 5
    a = reverseNodesInKGroups(l, k)
    assert_equal (1..5).to_a.reverse, array_from_list(a)
  end

  it "Need just rotate all array size 2" do
    l = list_from_array([1,2])
    k = 2
    a = reverseNodesInKGroups(l, k)
    assert_equal [2,1], array_from_list(a)
  end

  it "Need to rotate one chunk" do
    l = list_from_array([1,2,3])
    k = 2
    a = reverseNodesInKGroups(l, k)
    assert_equal [2,1,3], array_from_list(a)
  end

  it "Need to rotate two chunks" do
    l = list_from_array([1,2,3,4])
    k = 2
    a = reverseNodesInKGroups(l, k)
    assert_equal [2,1,4,3], array_from_list(a)
  end

  it "Need to rotate two chunks and it has tail" do
    l = list_from_array([1,2,3,4,5])
    k = 2
    a = reverseNodesInKGroups(l, k)
    assert_equal [2,1,4,3,5], array_from_list(a)
  end

  it "Need to rotate 3 chunks " do
    l = list_from_array([1,2,3,4,5,6])
    k = 2
    a = reverseNodesInKGroups(l, k)
    assert_equal [2,1,4,3,6,5], array_from_list(a)
  end
  it "Need to rotate 4 chunks " do
    l = list_from_array([1,2,3,4,5,6,7,8])
    k = 2
    a = reverseNodesInKGroups(l, k)
    assert_equal [2,1,4,3,6,5,8,7], array_from_list(a)
  end
  it "Need to rotate 4 chunks and tail" do
    l = list_from_array([1,2,3,4,5,6,7,8,9])
    k = 2
    a = reverseNodesInKGroups(l, k)
    assert_equal [2,1,4,3,6,5,8,7,9], array_from_list(a)
  end


  it "solve frims example" do
    l = list_from_array((1..5).to_a)
    k = 2
    a = reverseNodesInKGroups(l, k)
    assert_equal [2, 1, 4, 3, 5], array_from_list(a)
  end
  
    
end