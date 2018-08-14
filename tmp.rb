require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/6rE3maCQwrZS3Mm2H

puts "mergeTwoLinkedLists".red

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

def cut_list list
    return {cut: nil, list_head: nil} if list.nil?
    cut = list
    list_head = list.next
    cut.next = nil
    {cut: cut, list_head: list_head}
end

def insert_list(list_element: nil, list_head: nil, list_last: nil)
    return {list_head: list_head, list_last: list_last} if list_element.nil?
    if (list_last)
        list_last.next = list_element 
    else
        list_head = list_element
        list_last = list_element
    end
    {list_head: list_head, list_last: list_element}
end
def mergeTwoLinkedLists(l1, l2)
    head , last = nil, nil
    begin
        if( l1.nil? and l2.nil?)
            break
        end
        if(l1.nil?)
            cut = cut_list(l2)
            l2 = cut[:list_head]
            insert = insert_list(list_element: cut[:cut], list_head: head, list_last: last)
            head, last = insert[:list_head],insert[:list_last]
            next
        end
        if(l2.nil?)
            cut = cut_list(l1)
            l1 = cut[:list_head]
            insert = insert_list(list_element: cut[:cut], list_head: head, list_last: last)
            head, last = insert[:list_head],insert[:list_last]
            next
        end
        if(l1.value <= l2.value)
            cut = cut_list(l1)
            l1 = cut[:list_head]
            insert = insert_list(list_element: cut[:cut], list_head: head, list_last: last)
            head, last = insert[:list_head],insert[:list_last]
            next
        else
            cut = cut_list(l2)
            l2 = cut[:list_head]
            insert = insert_list(list_element: cut[:cut], list_head: head, list_last: last)
            head, last = insert[:list_head],insert[:list_last]
            next
        end
    end while l1 || l2
    head
end

def test_function qa
    a = mergeTwoLinkedLists(list_from_array(qa[0]),list_from_array( qa[1]))
    assert_equal qa[2],array_from_list(a)
end

describe "List" do
  it "cut should able to work with nil" do
    z = {cut: nil, list_head: nil}
    assert_equal z, cut_list(nil)
  end
  it "shoult cat first element from the list" do
    a = list_from_array([1,2,3,4,5])
    hash = cut_list(a)
    cut = array_from_list(hash[:cut])
    head = array_from_list(hash[:list_head])
    assert_equal [1],cut
    assert_equal [2,3,4,5], head
  end
  it "shoult cat first element from the list (one elemnt)" do
    a = list_from_array([1])
    hash = cut_list(a)
    cut = array_from_list(hash[:cut])
    assert_equal [1],cut
    assert_nil hash[:list_head]
  end

  it "should able to insert new nil element" do
    z = {list_head: nil, list_last: nil}
    assert_equal z, insert_list(list_element: nil, list_head: nil, list_last: nil)
  end
  it "should insert element" do
    a = list_from_array([1,2,3,4,5])
    b = pointer_to_index(a,4)
    assert_equal [1,2,3,4,5], array_from_list(a)
    c = list_from_array([6])
    ans = insert_list(list_element: c, list_head: a, list_last: b)
    assert_equal [1,2,3,4,5,6], array_from_list(ans[:list_head])
    assert_equal [6], array_from_list(ans[:list_last])
  end
  it "should insert element1" do
    c = list_from_array([7])
    ans = insert_list(list_element: c, list_head: nil, list_last: nil)
    assert_equal [7], array_from_list(ans[:list_head])
    assert_equal [7], array_from_list(ans[:list_last])
  end

  it "should solve problems" do
    qa = [
        [1, 2, 3],
        [4, 5, 6],
        [1, 2, 3, 4, 5, 6]
    ]
    a = mergeTwoLinkedLists(list_from_array(qa[0]),list_from_array( qa[1]))
    assert_equal qa[2],array_from_list(a) 
  end
  it "should solve problems" do
    qa = [
        [1, 2, 3],
        [4, 5, 6],
        [1, 2, 3, 4, 5, 6]
    ]
    test_function qa
  end
  it "should solve problems" do
    qa = [
        [1, 1, 2, 4],
        [0, 3, 5],
        [0, 1, 1, 2, 3, 4, 5]
    ]
    test_function qa
  end
  
    
end