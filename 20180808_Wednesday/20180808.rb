#!/usr/bin/env ruby

# Ruby String#lines and gsub new line.

p "alias x='ruby 20180808_Wednesday/20180808.rb'" 

# https://stackoverflow.com/a/7095275/8574922
x = "1.is
2.this
3.sparta?".lines.map{|x| x.gsub(/[[:digit:]]+\.([a-z]+)(.*)(\n)?/){|y| $1+$2}}

p x