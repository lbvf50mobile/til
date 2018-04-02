# [*1..100] == (1..100).to_a
require "benchmark"

n = 10_000
y = 10_000
Benchmark.bm(10) do |x|
    x.report('[*1..n]') { y.times do [*1..n] end}
    x.report('(1..n).to_a') { y.times do (1..n).to_a end}
end