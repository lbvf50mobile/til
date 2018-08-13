#!/usr/bin/env ruby

# Ruby String#rjust

p "alias x='ruby 20180813_Monday/20180813.rb'" 
require 'colorize'
puts "hop".rjust(10,"12").green
puts "hop".rjust(10,"1234567890").green
puts "absdefjhijk".rjust(10,"1234567890").green
puts "absdefjhij".rjust(10,"1234567890").green
puts "hop".green.rjust(10,"1234567890".red)
puts "hop".green.rjust(10,"1234567890")