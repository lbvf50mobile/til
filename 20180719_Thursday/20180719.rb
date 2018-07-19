#!/usr/bin/env ruby

# Sub vs Gsub.

p "alias x='ruby 20180719_Thursday/20180719.rb'" 

require 'colorize'

string = "test and test"
puts "The string:".green
p string

puts "sub 'test' 'REST': ".yellow
p string.sub('test','REST')

puts "gsub 'test' 'REST': ".yellow
p string.gsub('test', 'REST')