p "alias x='ruby 20190508_Wednesday/20190508.rb'" 
# Ruby Comparable#between?(min,max);
require 'colorize'
(1..10).each do |i|
    x = 3
    y = 5
    bool = i.between?(x,y)
    str = "#{i.to_s.rjust(2," ")}.between?(#{x},#{y}) == #{bool.inspect} "
    puts bool ? str.green : str.red
end
