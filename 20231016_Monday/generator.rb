#!/usr/bin/env ruby
ans = Array.new(34)
(0...34).each do |i|
  ans[i] = Array.new(i+1,1)
end
ans[0][0] = 1
ans[1][0] = 1
ans[1][1] = 1

(2...34).each do |i|
  (1...i).each do |j|
    ans[i][j] = ans[i-1][j-1] + ans[i-1][j]
  end
end
# Ruby generator.
if false
  puts "# Start data."
  puts  "["
  ans.each{ |x| puts "[" + x.join(?,) + "],"}
  puts  "]"
  puts "# End data."
end

# Go generator.
if true
  puts "// Start data."
  puts  "var data = [][]int{"
  ans.each{ |x| puts "{" + x.join(?,) + "},"}
  puts  "}"
  puts "// End data."
end
