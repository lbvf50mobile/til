x_array = [1,4,3,4,5]
p  x_array.each_cons(2).map{|x0,x1| (x0-x1).abs}.to_a
p x_array.each_slice(2).map{|x0,x1| (x0-x1).abs}.to_a
p x_array.combination(2).map{|x0,x1| (x0-x1).abs}.to_a
p x_array.permutation(2).map{|x0,x1| (x0-x1).abs}.to_a