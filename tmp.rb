# Count how many workds in GREP documentation
# https://www.gnu.org/software/grep/manual/grep.html

require 'benchmark'
require 'colorize'

puts "Read lines.".green

lines = ""
time = Benchmark.measure {
    lines =  File.readlines('g.html')
}
puts lines.size
puts  ("Read all lines: %.2f" % time.real).magenta

words = lines.reduce(:+).split.select{|x| /^[a-zA-Z]+$/ === x}.map{|x| x.downcase}.uniq.sort
puts "Total words:".green
p words.size
puts "First 10 words:".green
p words[1..10]
puts "Last 10 words:".green
p words[-10..-1]