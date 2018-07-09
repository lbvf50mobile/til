# Blocks in Ruby.
# https://youtu.be/K8uhD8mtorE
p "alias x='ruby 20180709_Monday/20180709_1.rb'" 


require 'benchmark'
require 'colorize'
# g.html is https://www.gnu.org/software/grep/manual/grep.html
# https://stackoverflow.com/a/29166478

KEY="aabbbxxxxzzzooooo"

def test(x="Action",color=:green, &action)
    time = Benchmark.measure {
        action.call
    }
    puts "#{x}: " + time.real.round(2).to_s.send(color)
end

def copy
    `cp g.html g`
end

def append_key
    `echo #{KEY} >> g`
end

def drop
    `rm  g`
end

def multyply n
    test("Multyply file", :red) {
        (n-1).times{
            `cat g.html >> g`
        }
    }
    
end

def size
    puts `ls -lh g`.split(" ")[4].green
end
def s_time
    test("Grep in file",:yellow) {`grep '#{KEY}' g`}
end

drop
10.times do |i|
    i += 1
    puts i.to_s.green
    copy
    multyply i*1
    append_key
    size
    s_time
    drop
end
