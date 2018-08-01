#!/usr/bin/env ruby

# Ruby Array zip and cycle.

p "alias x='ruby 20180801_Wednesday/20180801.rb'" 

p %w{ cat rat dog hat bat zet }.zip(%w{small big}.cycle).map{|x| x.join(" ")}