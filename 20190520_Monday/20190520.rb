p "alias x='ruby 20190520_Monday/20190520.rb'" 

# Ruby Array#<=>.

# https://ruby-doc.org/core-1.9.3/Array.html#method-i-3C-3D-3E

require 'colorize'

def show (a,b)
    puts "A == %s and B == %s " % [a.inspect.green, b.inspect.green]
    tmp = []
    a.each do |x|
        tmp.push x
        puts '%s <=> %s == %s' % [tmp.inspect, b.inspect, ((tmp<=>b) == 1) ? ("1 greater".red) : ((tmp<=>b) == -1 ? "-1 less".cyan : "0 equal")]
    end
    puts ""
end

a = [1,7]
b = [1,1,1]
show a, b

a = [1,1]
b = [1,7,1]
show a, b

a = [1,1,1,1]
b = [1,1,1,1]
show a, b


