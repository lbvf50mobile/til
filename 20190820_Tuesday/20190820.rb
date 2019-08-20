p "alias x='ruby 20190820_Tuesday/20190820.rb'" 

# Ruby: Object#frozen? ;

a, b, c = [1],[2],5
a.freeze
p a.frozen?
p b.frozen?
p "'a' variable is frozen when 'b' is not."
