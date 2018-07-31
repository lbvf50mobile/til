#!/usr/bin/env ruby

# Ruby String -> Object, Object -> String.

p "alias x='ruby 20180731_Tuesday/20180731.rb'" 
require "colorize"

puts "String class to 'String'".green
p String.name

# https://stackoverflow.com/a/35439982/8574922
# Ruby convert class name in string to actual class.
puts "'String' string to Class".magenta
p Object.const_get("String")