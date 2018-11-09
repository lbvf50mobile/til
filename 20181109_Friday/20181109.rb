#!/usr/bin/env ruby

# YAML format and alias.

# https://gist.github.com/lbvf50mobile/90d0fe3e774a73a644d7994e2dba1f36
# http://yaml.org/spec/1.2/spec.html#id2786196
# https://github.com/cyklo/Bukkit-OtherBlocks/wiki/Aliases-(advanced-YAML-usage)

p "alias x='ruby 20181109_Friday/20181109.rb'" 

require 'yaml'
require 'pp'
pp YAML.load_file('20181109_Friday/20181109.yml')
