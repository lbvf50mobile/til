p "alias x='ruby 20190903_Tuesday/20190903.rb'" 

# Ruby: Do not mess  with reduce and each_with_object. arr.reduce(1,:*) reduce with symbol.

p 0 == [1,2,2].each_with_object(0){|v,o| o += v} # new object every time
p 5 == [1,2,2].each_with_object([0]){|v,o| o[0] += v }[0] # change value of object defined in the funciton call
p 5 == [1,2,2].reduce(0){ |mem,v| mem += v} # set new mem on every return
p 5 == [1,2,2].reduce(0,:+)
p 5 == [1,2,2].reduce(0,&:+)
