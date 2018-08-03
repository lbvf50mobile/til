#!/usr/bin/env ruby

# Array#all? true on empty, Array#any? false on empty.

p "alias x='ruby 20180803_Friday/20180803.rb'" 

require 'colorize'
truable = "true".green
falsable = 'false'.red
puts "Array#all?".magenta + " is always #{truable} on empty array." if [].all?{|x| false}
puts "Array#any?".cyan + " is always #{falsable} on empty array." unless [].any?{|x| true}