p "alias x='ruby 20180818_Saturday/20180818_short.rb'" 
# https://stackoverflow.com/questions/2434503/ruby-factorial-function
# factorial
def fact(n)
    n.downto(1).reduce(:*)
end

p fact(20)

9000000.times do
    fact(20)
end