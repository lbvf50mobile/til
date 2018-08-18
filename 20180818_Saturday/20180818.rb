p "alias x='ruby 20180818_Saturday/20180818.rb'" 

# factorial
def fact(n)
    if 0 == n
        1
    else 
        n * fact(n - 1)
    end
end

p fact(20)

1000000.times do
    fact(20)
end