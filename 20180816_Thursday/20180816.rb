#!/usr/bin/env ruby

# Ruby using tap for deleting hash element.

p "alias x='ruby 20180816_Thursday/20180816.rb'"

require 'colorize'

hash = {a: "ThisIsA", b: "ThisIsB"}
hash1 = hash.clone

puts "this is hash #{hash.inspect}".green
puts "Delete element from hash returns the element #{hash.delete(:a).inspect}".red
puts "ans now hash is changes #{hash.inspect}".cyan
puts "but what if I want to delete element from hash and get the hash not element?".green
puts "Here how it works by tap method".gsub(/tap/,{'tap'=>"tap".red})
puts "Delete element and retuns hash: #{hash1.tap{|x| x.delete(:a)}.inspect}"
puts "And this is Hash: #{hash1.inspect}".green
