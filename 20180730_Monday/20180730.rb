# Measure Array#shuffle! and Array#insert.

require 'benchmark'
require 'colorize'

p "alias x='ruby 20180730_Monday/20180730.rb'" 

def measurementes (x)
    size = x
    puts "#{Math.log10(size).to_i}. #{size}"
    array = (1..x).to_a
    shuffle_time = Benchmark.measure {
        array.shuffle!
    }
    puts "Shuffle array: %02f" % shuffle_time.real
    insert_time = Benchmark.measure {
        array.insert(1,5)
    }
    puts "Insrt time: %02f".magenta % insert_time.real
    puts "Array first 3 elements: %s" % array[0..2].inspect
end

array_size = 10

8.times do
    measurementes array_size
    array_size *= 10
end

