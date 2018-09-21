require "colorize"
require "pp"


%w{case when switch case when switch}.permutation(2).to_a
    .uniq.each_with_index do |(x,y),i|
        puts "#{i+1}. #{x} #{y}"
end