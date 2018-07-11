#!/usr/bin/env ruby
require "colorize"
desc "This is top level first"
task :first,[:one,:two, :three] => %w{ til:a_first til:b_first} do |t,a| 
    puts "First task.".magenta
    p t
    p a
end

namespace :til do
    desc "This is A first"
    task :a_first,[:one] do |t,a|
        puts "A first task.".green
        p t
        p a
    end
    desc "This is B first"
    task :b_first, [:two,:three,:four] do |t,a|
        puts "B first task.".green
        p t
        p a
    end
end