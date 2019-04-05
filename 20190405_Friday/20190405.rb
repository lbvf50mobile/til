p "alias x='ruby 20190405_Friday/20190405.rb'" 

# Array#select returns empty array and it's truly.


p (1..10).to_a.select{|x| x > 1000}
p "and this is true" if (1..10).to_a.select{|x| x > 1000}
p "use ! empty? to avoid bugs" unless ! (1..10).to_a.select{|x| x > 1000}.empty?

check_square = ->(d){ 0 == Math.sqrt(d) - Math.sqrt(d).to_i}

require 'benchmark'

ans = []

puts Benchmark.measure { 
    ans = (1...10**3).reduce([]){|memo,x|
        memo.push(x) if check_square.(x)
        memo
    }
}
p ans.size
File.write('20190405_Friday/tmp',ans.inspect)