#!/usr/bin/env ruby

# Ruby CSV;

p "alias x='ruby 20190111_Friday/20190111.rb'" 

data = [[1,2],[3,4]]
name = "20190111_Friday/csv.csv"
require "csv"
require "colorize"
require "pp"

puts "Current dir %s" % [Dir.pwd.green]
puts "Write data to %s" % [name.green]
CSV.open(name, "w") do |csv|
    data.each {|x| csv << x}
end
puts "Check do file %s exists %s" % [name.green, File.file?(name) ? "true".green : "false".red]
puts "Read data from the %s " % [name.green]
pp CSV.read(name)
