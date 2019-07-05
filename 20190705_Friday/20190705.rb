p "alias x='ruby 20190705_Friday/20190705.rb'" 

# Ruby 'or' and || are not synonims, 'or' has a low precedence.

# https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Operators#Logical_Or

puts "true or true ? ?a : ?b == #{true or true ? ?a : ?b}"
puts "true || true ? ?a : ?b == #{true || true ? ?a : ?b}"
puts "(true or true)  ? ?a : ?b == #{true or true ? ?a : ?b}"
