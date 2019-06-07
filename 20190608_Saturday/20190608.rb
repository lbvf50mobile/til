p "alias x='ruby 20190608_Saturday/20190608.rb'" 

# JS/Ruby [^], and 'g' Regex flag in JS String.prototype.match.

require 'colorize'
puts "start".red
begin
    "8910"[/[^]/]
rescue => exception
   puts e.message.green
end