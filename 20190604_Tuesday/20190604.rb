p "alias x='ruby 20190604_Tuesday/20190604.rb'" 

# Ruby keyword arguments only after average arguments in method call and method definition.

# https://www.codewars.com/kata/how-many-arguments/ruby
# https://www.justinweiss.com/articles/fun-with-keyword-arguments/

def example(a,b:,c:5)
    [a,b,c]
end

p example("aA",b:"bB",c:"cC") # ["aA", "bB", "cC"]

def example2(*a, **keywordsa)
    [*a,keywordsa]
end
p example2(3, a:1,b:2)
# p example2(a:1,b:2,3) # syntax error, unexpected ')', expecting =
=begin
def example1(a:1, b:2, c) # syntax error, unexpected tIDENTIFIER
    [a,b,c]
end
p example("aA",b:"bB",c:"cC") # ["aA", "bB", "cC"]
=end
