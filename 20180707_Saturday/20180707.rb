# Evaluating searh time: 8m to search string at the bottom of 1GB using  2.20Ghz i3.
p "alias x='ruby 20180707_Saturday/20180707.rb'" 
require 'benchmark'
require 'colorize'
# g.html is https://www.gnu.org/software/grep/manual/grep.html
# https://stackoverflow.com/a/29166478

KEY="aabbbxxxxzzzooooo"

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
    (n-1).times{
        `cat g.html >> g`
    }
end

def size
    p `ls -lh g`.split(" ")[4]
end
def s_time
    time = Benchmark.measure {
        `grep '#{KEY}' g`
    }
    puts time.real #or save it to logs
end

drop
10.times do |i|
    i += 1
    puts i.to_s.green
    copy
    multyply i*10
    append_key
    size
    s_time
    drop
end
