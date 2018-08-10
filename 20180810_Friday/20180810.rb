#!/usr/bin/env ruby

# Ruby Enumerable#group_by

# https://apidock.com/ruby/Enumerable/group_by

p "alias x='ruby 20180810_Friday/20180810.rb'" 

z = %w{red_flower red_bottle green_wall green_ball whight_wall red_moon bams}.group_by do |x|
    case x
    when /red/
        :red
    when /green/
        :green
    when /whight/
        :whight
    else
        :unknown
    end
end
p z