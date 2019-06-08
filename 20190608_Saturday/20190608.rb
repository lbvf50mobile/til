p "alias x='ruby 20190608_Saturday/20190608.rb'" 

# JS/Ruby [^], and 'g' Regex flag in JS String.prototype.match.

# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/solutions/javascript

require 'colorize'
puts "start".red
begin
    "8910"[/[^]/]
rescue => exception
   puts e.message.green
end