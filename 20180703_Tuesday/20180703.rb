# Enumerable#each_slice is not Enumerable#each_cons.
p "alias x='ruby 20180703_Tuesday/20180703.rb'" 
binar ="01001101010010010101010001010010010010010011010000110010"
p ascii = binar.chars.each_slice(8).map{|x| x.join.to_i(2).chr}.join
