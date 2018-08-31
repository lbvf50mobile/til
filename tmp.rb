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



def findSubstrings(words,parts)
    ["Apple", 
        "Me[lon]", 
        "Or[a]nge", 
        "Water[mel]on"]
end



Tests = [
    ["Apple", 
    "Melon", 
    "Orange", 
    "Watermelon"],

    ["a", 
    "mel", 
    "lon", 
    "el", 
    "An"],

    ["Apple", 
    "Me[lon]", 
    "Or[a]nge", 
    "Water[mel]on"],
]




describe "Trees" do
  
    it "auto test" do
       Tests.each_slice(3)do |words, parts, ans|
            assert_equal ans, findSubstrings(words,parts)
        end
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
