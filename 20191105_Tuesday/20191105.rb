p "alias x='ruby 20191105_Tuesday/20191105.rb'" 

# Ruby: Primes take_while and count.

require "prime"
def count_primes(n)
  Prime.each.take_while{|x| x < n}.count() 
end

p count_primes(10)