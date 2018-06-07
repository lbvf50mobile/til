# Using each_with_index.reduce 
(5..7).each_with_index{|x,i| p [x,i]}
p (5..7).each_with_index.reduce([]){|s,(x,i)| s << [x,i]}
