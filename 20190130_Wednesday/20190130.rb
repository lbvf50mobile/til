p "alias x='ruby 20190130_Wednesday/20190130.rb'" 

# Ruby Range === Fixnum;

p "Ruby Range === Fixnum"
require "colorize"

puts "Range === works with Fixnum".green
p (1..5) === 1
p (1...4) === 1
puts "Range === dose not work with Float".red
p (1..9) === 0.2
puts "Rane 1 .. 2 === 3 dose not works because it reands like 1 ... (1==3).".cyan


# https://www.rubyguides.com/2015/10/ruby-case/
a = 3

case a
when 1..3 
    p "'a' between 1 and 3"
else
    p "Dose not fires here"
end