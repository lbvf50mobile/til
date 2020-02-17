require "benchmark"

Benchmark.bm do
    (0...1000).each do |i|
        (0...1000).each do |j|
        end
    end 
end