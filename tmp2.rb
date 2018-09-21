require "colorize"
require "pp"


x = []
words = %w[case when switch]
words.each {|w1| words.each { |w2| x.push [w1,w2]}}

words = %w[case when switch]
y = words.product(words)

puts x == y ? "Equal".green : "Different".red