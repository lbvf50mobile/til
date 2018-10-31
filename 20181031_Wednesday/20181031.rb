#!/usr/bin/env ruby

# Ruby define_method

# https://apidock.com/ruby/Module/define_method

p "alias x='ruby 20181031_Wednesday/20181031.rb'" 

define_method :str_count, &:count

p "22222".count("2")
p str_count("22222","2")
