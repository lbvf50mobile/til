p "alias x='ruby 20190330_Saturday/20190330.rb'" 

# Sort 100 arrays, each contains one million shuffled integers for @nerzh (15 create, 32 sort)


require 'benchmark'

Benchmark.bm do |x|
    buffer = []
    arr = ->(){ (1..1_000_000).to_a.shuffle }
    x.report("fill buffer with array:") { 100.times {buffer.push(arr.())}}
    x.report("sorrt each array in buffer:"){ 100.times{|i| buffer[i].sort}}
end
