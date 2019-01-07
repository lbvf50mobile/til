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

# Explanation of Proc and Block for @morozzzko https://goo.gl/sxfb5d
p :itself.to_proc  # <Proc:0x00000001bf44c8(&:itself)>
p :itself.to_proc
p :itself.to_proc.object_id == :itself.to_proc.object_id
def zet
    yield
end
zet{ p "this is block"}
zet(&Proc.new{ p "and this is Proc"})