p "alias x='ruby 20190425_Thursday/20190425.rb'"

# Ruby 'for' is not like JS 'for...in'. (help for Anak)

require 'colorize'
ar = ["a", "b", "c"]
for i in ar
    p [i,ar]
end
p i

arr = [1, "rr", 444]
arr.each_with_index do |value, index|
    puts value if index != 1
end

index = 0
while index < arr.size do
    puts arr[index] unless index == 1
    index += 1
end

arr.each.with_index(1) do |value, index| 
    puts value if index != 2
end
