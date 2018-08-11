#!/usr/bin/env ruby

# Ruby gsub with hash.

p "alias x='ruby 20180811_Saturday/20180811.rb'" 

require "colorize"

hash = {'green' => "green".green, 'red' => "red".red}
string = "I like green and red apples."

puts string
puts string.gsub(/[[:alpha:]]+/,hash)
puts string.gsub(/green|red/,hash)
