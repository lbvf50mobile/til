#!/usr/bin/env ruby

# Ruby Hash#values_at and multiple assignments;

p "alias x='ruby 20181212_Wednesday/20181212.rb'" 

# https://docs.ruby-lang.org/en/2.0.0/Hash.html#method-i-values_at
# https://irb.rocks/multiple-assignments-in-ruby/
# https://nathanhoad.net/ruby-multiple-assignment
# by @vano468 Ivan Kornilov

a,b,c = {a:1, b: "two", c: %w{one two three}}.values_at(:a,:b,:c)
require "colorize"
puts "a = #{a}, b = #{b}, c = #{c.inspect}".green