p "alias x='ruby 20190523_Thursday/20190523.rb'" 

# Ruby three ways how to check array is a strictly increasing sequence (uniq.sort, each_cons, chunk_while.to_a).

def first a
    a == a.uniq.sort
end
def second a
    a.each_cons(2).all?{|x,y| x < y}
end
def third a
    a.chunk_while{|x,y| x < y}.to_a.size == 1
end
def test a
    puts '%s uniq.sort = %s, each_cons => %s, chunk_while.to_a => %s' % [a.to_s, first(a).to_s, second(a).to_s, third(a).to_s]
end


test([1,2,3])
test([1,1,3])
test([10,11,15])
