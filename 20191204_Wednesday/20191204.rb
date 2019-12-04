p "alias x='ruby 20191204_Wednesday/20191204.rb'" 

# Leetcode: 760. Find anagram mappings.

=begin
https://leetcode.com/problems/find-anagram-mappings/
Leetcode: 760. Find anagram mappings.


Given two lists Aand B, and B is an anagram of A. B is an anagram of A means B is made by randomizing the order of the elements in A.

We want to find an index mapping P, from A to B. A mapping P[i] = j means the ith element in A appears in B at index j.

These lists A and B may contain duplicates. If there are multiple answers, output any of them.

For example, given

A = [12, 28, 46, 32, 50]
B = [50, 12, 32, 46, 28]
We should return
[1, 4, 3, 2, 0]
as P[0] = 1 because the 0th element of A appears at B[1], and P[1] = 4 because the 1st element of A appears at B[4], and so on.
Note:

A, B have equal lengths in range [1, 100].
A[i], B[i] are integers in range [0, 10^5].
=end

def input_array_and_anagram
    size = rand(0...10)
    return [[],[]] if size.zero?
    input = (0...size).each_with_object([]){|value,obj| obj.push(rand(0..1000))}
    anagram = input.shuffle
    [input, anagram]
end

def check_map(mapping, a, b)
    mapping.each_with_index.all?{|b_index, a_index| a[a_index] == b[b_index]}
end

def find_anagram_mappings(a,b)
    b_value_key = b.each_with_index.to_h
    a.map{|value| b_value_key[value]}
end

require 'minitest/autorun'

describe "find anagram mappings" do
    it "find_anagram_mappings works" do
        5000.times do
            input, anagram = input_array_and_anagram
            assert check_map(find_anagram_mappings(input,anagram), input, anagram)
        end
    end
end