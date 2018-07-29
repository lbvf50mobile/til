#!/usr/bin/env ruby

# Ruby Array#insert Array#delete_at (No need for Linked List in Ruby).

p "alias x='ruby 20180729_Sunday/20180729.rb'"

a = [1]
p a.insert(0,2) # [2,1]
p a.delete_at(0) # 2
p a # [1]