#  what is better cat or File.read
# https://www.gnu.org/software/grep/manual/grep.html

require 'benchmark'
repeat = 1000
Benchmark.bm { |x|

    x.report("cat"){ repeat.times{`cat g.html`}}
    x.report("File.read"){ repeat.times{File.read('g.html')}}

}