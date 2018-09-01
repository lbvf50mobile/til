require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/Ki9zRh5bfRhH6oBau/description
# https://youtu.be/dUBkaqrcYT8
3.times do puts "" end
puts "findSubstrings".red
puts ""




require "minitest/autorun"
require 'benchmark'
require 'json'


require 'ostruct'

class Trie
    attr_accessor :keys
    def initialize
        @keys = {}
    end
    def add node
        keys[node.val] = node if keys[node.val].nil?
    end
    
    def prefix(arr)
        acc = ""
        n = self
        word = false
        arr.each do |char|
            if n.keys[char]
                n = n.keys[char]
                acc += n.val
                word = acc if n.leaf?
            else
                return word
            end
        end
        word
    end

    def insert(word)
        n = self
        word.chars.each do |char|
            if n.keys[char]
                n = n.keys[char]
            else
                n = n.add(Node.new(char))
            end
        end
        n.leaf!
        self
    end
    def to_s
        ans = "keys:#{@keys.keys.to_s} "
        @keys.reduce(ans){|m,(_,v)| m += v.to_s; m}
        
    end
    def == o
        self.to_s == o.to_s
    end
end



class Node
    attr_accessor :keys, :val
    def initialize(val)
        @keys = {}
        @leaf = false
        @val = val
    end
    def leaf!
        @leaf = true
    end
    def leaf?
        @leaf
    end
    def add node
        keys[node.val] = node if keys[node.val].nil?
    end
    def to_s
        ans = "keys:#{@keys.keys.to_s} val:#{@val} leaf:#{@leaf} "
        @keys.reduce(ans){|m,(_,v)| m += v.to_s; m}
    end
end
def findSubstrings(words,parts)
    # create Trie
    trie = Trie.new
    parts.each { |x| trie.insert(x)}
    # find replasefor words
    words.map{|w|
        arr = w.chars
        pat = false
        max = ""
        (0..arr.size-1).each do |x|
            pat = trie.prefix(arr[x..-1])
            max = pat if pat && max.size < pat.size
        end
        w.sub!(max,"[#{max}]") if !max.empty?
        w
    }
end



require_relative 'tests/codesignal_tests.rb'
Tests = CodeSignalTests.tests




describe "Trees" do
  
    it "auto test" do
       Tests.each_slice(3)do |words, parts, ans|
            assert_equal ans, findSubstrings(words,parts)
        end
    end

    it "should create Trie." do
        assert_instance_of Trie, Trie.new
    end
    it "Trie should use to_s" do
        a = Trie.new
        a.keys = {'a'=> 1, 'b'=>2}
        assert_equal "keys:[\"a\", \"b\"] 12",a.to_s
    end
    it "Node should use to_s" do
        a = Node.new(?z)
        a.keys = {'a'=> 1, 'b'=>2}
        assert_equal "keys:[\"a\", \"b\"] val:z leaf:false 12",a.to_s
        a.leaf!
        assert_equal "keys:[\"a\", \"b\"] val:z leaf:true 12",a.to_s
        b = Node.new(?x)
        assert_equal "keys:[] val:x leaf:false ",b.to_s
    end
    it "Should use the recursion" do
        a = Node.new(?z)
        a.add Node.new(?x)
        assert_equal "keys:[\"x\"] val:z leaf:false keys:[] val:x leaf:false ",a.to_s
    end
    it "should use th recutifon for tire" do
        a = Trie.new
        a.add Node.new(?x)
        assert_equal "keys:[\"x\"] keys:[] val:x leaf:false ",a.to_s
    end
    it "equal" do
        a = Trie.new
        a.add Node.new(?x)
        b = Trie.new
        b.add Node.new(?x)
        assert_equal a,b
    end
    it "insert word do" do
        word = Trie.new
        word.add(Node.new(?d)).add(Node.new(?o)).leaf!
        auto = Trie.new.insert("do")
        assert_equal word, auto
    end
    it "search do" do
        auto = Trie.new.insert("123")
        prefix = auto.prefix("12345678".chars)
        assert "123", prefix
        auto.insert("1234567")
        prefix = auto.prefix("12345678".chars)
        assert "1234567", prefix

    end
end

# https://youtu.be/dUBkaqrcYT8
# Trie is an efficient information retrieval dat structure using which search coplexites can be brought to optimal limit.
# Storing keys in binary search tree will need time proporitonal to M*logN, where M is maximum string lenght and N is no.
# keys in tree.
# Using trie, we can search the key in O(m) time. However the penalty is on trie storage requirements.
# Insertion in a Trie
# Every character of input key is inserted as an indiviual trie node.
# The children is an array of pointers to next level trie nodes
# Keys refest to the work thaty you are inserting or searchin the trie
# insert nd search costs O(K) where K is length of key.
# The memory requirements of trie is O(ALPHABET_SIZE*k*N) where N is numer of keys in trie.
# ALPHABET_SIZe is the numbr of alphabets i.e. 26.
# For exmple lets insert the key 'there' in the Trie structure. Initialize all the nodes of the root with NULL.
# Now, we simply replace the chracter `t` triw node with   a children node with corepsonds to caharcter 't' 
# (e.g. 3rd node for chracter 'c')
# Similary keep inserting the charactrs at each level until the end of the keys is reached.
# Mark the last character's tire node as a leaf node.
# Rememeber, ll other child nodes for each level will stay NILL.
# Here every character of the keys is stored in the form of a trie node in the trie structure.
# the leaf node determines the end of the key.
# Please note that for this case there is only one child for each node.
# if the input key is new or an extension of exsiting key, we need to construct node of the key, and makr leaf node.
# lets extend this trie sturcuture by inserting even more keys.
# Now, the given trie consists of multiple keys nd we can observer tht with the lelp of leaf nodes.
# Searching in a Trie
# While serching we only compare the characrters and move down.
# The search can terminate doe to end of string, if the value field of last node is non-zeor then
# the key exist in trie.
# The search can also temrinate due to lack of keys nodes in trie withoug examing all the characters.
# now, lets try to search the key which we inserted in this trie, 'there'
# we start for the root comparing the fist charackter of our key with it's children nodes.
# on finding the required node we repeat the same process for next character in our key and step down each level.
