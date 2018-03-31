# Redcue XOR find  X in [x,*Array.new(n,y)] when size is odd, and n even
x = rand(1..100)
y = rand(1..100)
p "X^X %s" % (x^x)
p "X^0 == X %s" % (x == (x^0))
p "X^Y == 0 %s" % (x^y == 0)
p "Odd works [x,y,y] because y^y kill each other."
p x == [x,y,y].reduce(:^)
p x == [x,y,y,y,y].reduce(:^)
p x == [x,*Array.new(8,y)]
p "Even dosenot  works [x,y,y,] because y^y kill each other but y^x dose not give X."
p x == [x,y,y,y].reduce(:^)
p x == [x, *Array.new(9,y)]
