# Ruby Array#permutation Array#combination

# https://apidock.com/ruby/Array/permutation
# https://apidock.com/ruby/v1_9_3_392/Array/combination

p "alias x='ruby 20180626_Tuesday/20180626.rb'" 

a = [1,2,3]

puts "Array: #{a.inspect}"
puts "1) Array permutation: a.permutation(2).to_a"
p a.permutation(2).to_a
puts "2) Array permutation, sort each element: a.permutation(2).map{|x| x.sort}.to_a"
p a.permutation(2).map{|x| x.sort}.to_a
puts "3) Array permutation, sort each element, sort array: a.permutation(2).map{|x| x.sort}.sort.to_a"
p a.permutation(2).map{|x| x.sort}.sort.to_a
puts "4) Array permutation, sort each element, sort array, uniq: a.permutation(2).map{|x| x.sort}.sort.uniq.to_a"
p a.permutation(2).map{|x| x.sort}.sort.uniq.to_a
puts "5) Array combination: a.combination(2).to_a"
p a.combination(2).to_a

puts "Summary: a.combination(a.size) == a.permutation.map{|x| x.sort}.sort.uniq.to_a"
p a.combination(a.size).to_a == a.permutation.map{|x| x.sort}.sort.uniq.to_a
