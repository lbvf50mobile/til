require "colorize"
#help to @vkazancev
=begin
name  = gets
puts " %s name aftter %s " % ['p'.green, 'gets'.cyan]
p name
puts " %s name aftter %s " % ['puts'.red, 'gets'.cyan]
puts name
name = name.chomp
puts " %s name aftter %s " % ['p'.green, 'chomp'.cyan]
p name
puts " %s name aftter %s " % ['puts'.red, 'chomp'.cyan]
puts name
up = gets.chomp
p up
=end
puts "one \n"
puts "tow"
p "Hi\n".chomp == "Hi\n".strip # true
p "Hi         \n".chomp != "Hi  \n".strip # true
p "Hi     ".strip == "Hi\n\n\n\n\n\n".strip # true


