#!/usr/bin/env ruby

# Ruby Module#<, Module#>, Module#<= [Check inheritance]

# https://ruby-doc.org/core-2.5.1/Module.html#method-i-3C
# https://apidock.com/ruby/v1_9_3_392/Module/%3C
# 

p "alias x='ruby 20190120_Sunday/20190120.rb'" 

a = Array
p a <= Array && a <= Enumerable
p a <= Array && a <= Fixnum
p a <= Array && !(a <= Fixnum)

[[Array,Enumerable],[Enumerable,Array],[Array,String]].each{|x,y|
}


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