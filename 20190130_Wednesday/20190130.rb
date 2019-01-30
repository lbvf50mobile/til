p "alias x='ruby 20190130_Wednesday/20190130.rb'" 

# Ruby Range === Fixnum, and case when x,y;

p "Ruby Range === Fixnum, and case when x,y;"
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

# This example shown by Konstatin (@perdumonocle)
b = 15
case b
when 1..3, 10..17 
    p "'b' between 1 and 3 or 10 and 17"
else
    p "Dose not fires here"
end

def test z
     case z 
     when /a/, /b/
        "a and b"
     else 
        "no a and b"
     end
end
p %w{ aa bb cc dd ee}.map{|x| test(x)}

p (?A..?Z).cover?("Ruby") # ture
p (?A..?Z).include?("Ruby") # false