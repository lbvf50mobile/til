#!/usr/bin/env ruby

# Ruby Enumerable#group_by

p "alias x='ruby 20190107_Monday/20190107.rb'" 

# https://stackoverflow.com/a/12725405/8574922
# https://apidock.com/ruby/Enumerable/group_by
p [1,1,1,1,1,2,2,2,15,15,20,25,25,40,4,4].group_by{|x| x}.values
p [1,1,1,1,1,2,2,2,15,15,20,25,25,40,4,4].group_by(&:itself).values # @morozzzko
p [1,1,1,1,1,2,2,2,15,15,20,25,25,40,4,4].group_by(&:itself.to_proc).values
p [1,1,1,1,1,2,2,2,15,15,20,25,25,40,4,4].group_by(&Proc.new{|o| o.send :itself}).values
p [1,1,1,1,1,2,2,2,15,15,20,25,25,40,4,4].group_by{|o| o.send :itself}.values
p [1,1,1,1,1,2,2,2,15,15,20,25,25,40,4,4].group_by{|o| o.itself}.values  
p [1,1,1,1,1,2,2,2,15,15,20,25,25,40,4,4].group_by{|o| o }.values
# https://goo.gl/yyYoHD