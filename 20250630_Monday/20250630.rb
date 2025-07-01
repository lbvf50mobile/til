#!/usr/bin/env ruby

# Just want to count amount of different types of tasks during the june 2025.
h = {}
h.default = 0
STDIN.read.split("\n")
  .select{|x| /.{1}[0-9]{2}.{1}[EMH]/ === x}
  .each{|x| 
    tmp = x.match(/.{1}[0-9]{2}.{1}(?<type>[EMH])/)
    type = tmp[:type]
     h[type] += 1 }

puts "Total: #{h.values.sum}"
puts "Easy: #{h[?E]}"
puts "Medium: #{h[?M]}"
puts "Hard: #{h[?H]}"


