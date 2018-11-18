#!/usr/bin/env ruby

# Ruby & to_proc

# https://stackoverflow.com/a/9429972/8574922
# https://stackoverflow.com/a/1217114/8574922

p "alias x='ruby 20181119_Monday/20181119.rb'" 

require 'pp'
require 'colorize'
def z(&x)
    x.call
end

z{ p "this is me"}