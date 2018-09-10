#!/usr/bin/env ruby

# Ruby IPAddr

p "alias x='ruby 20180910_Monday/20180910.rb'" 
require 'ipaddr'
p IPAddr.new("127.0.0.1").ipv4?