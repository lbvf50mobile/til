require 'pp'
require 'colorize'

# Read file
%w{1 2 3}.reduce{|s,x| hash = {s:s,x:x}; p hash }