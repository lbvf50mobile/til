# YAML

p "alias x='ruby 20180630_Saturday/20180630.rb'" 

# https://stackoverflow.com/a/3877355/8574922 read
# https://stackoverflow.com/a/14533229/8574922 write
# https://stackoverflow.com/a/1489233/8574922 colorize

require 'yaml'
require 'pp'
require 'colorize'

puts "Read read.yml".green
thing = YAML.load_file('20180630_Saturday/read.yml')
pp thing
pp thing.class

puts "Update the yml".green
thing['test']['first_test'].map{|(x,y)| y.upcase! }

pp thing

File.open('20180630_Saturday/write.yml',"w"){ |f| f.write thing.to_yaml }

puts "Read write.yml".green
pp YAML.load_file('20180630_Saturday/write.yml')
