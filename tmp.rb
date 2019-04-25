# help for Anak

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

action = ->(value,index){ puts value if index != 2}
arr.each.with_index(1,&action)

arr.each.with_index(1) do |value, index| 
    puts value if index != 2
end

