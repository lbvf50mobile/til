#!/usr/bin/env ruby

# Ruby Module#<, Module#>, Module#<=> [Check inheritance]

# https://ruby-doc.org/core-2.5.1/Module.html#method-i-3C
# https://apidock.com/ruby/v1_9_3_392/Module/%3C
# 

p "alias x='ruby 20190120_Sunday/20190120.rb'" 

a = Array
p a <= Array && a <= Enumerable
p a <= Array && a <= Fixnum
p a <= Array && !(a <= Fixnum)

require "colorize"
[[Array,Enumerable],[Enumerable,Array],[Array,String]].each{|x,y|
    hash = {
        -1 => ->(x,y){ "#{x.to_s} inherited from #{y.to_s}".red},
        0 => ->(x,y){"#{x.to_s} have no connection with #{y.to_s}".cyan},
        1 => ->(x,y){"#{x.to_s} is ancestor of #{y.to_s} ".green}
    }
    puts hash[(x<=>y).to_i].(x,y)
}

#thnx @morozzzko, @daniel_bober, @thktomska, @vasivas

# https://drivy.engineering/ruby-lambda-composition/
a = ->(x){ x + 1}
b = ->(x){ x + 2}
compose = ->(x,y){  ->(z){x.(y.(z))}}
p compose.(a,b).(0)
=begin
def apply_rules(rules:, base_price:)
  rules.inject(:>>).call(base_price)
end
=end