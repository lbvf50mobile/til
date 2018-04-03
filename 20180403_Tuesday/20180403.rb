# Test do Fload has no fraction part? 0 == x%1 
require "benchmark"
x = 1.1
y = 2.0
p "[x,y] = #{[x,y]}"
p " 0 == x%1 #{0 == x%1}"
Benchmark.bm(20) do |z|
    z.report('0 == x%1') { 10_000_000.times do  0 == x%1; 0 == y%1 end} # 3.438
    z.report('x == x.round') { 10_000_000.times do  x == x.round; y == y.round end} #3.171

end
