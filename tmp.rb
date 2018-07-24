require 'pp'
require 'colorize'

# Read file
lines = File.readlines('tmp.html')
puts "tmp.html lines:".green
pp lines

# Clear HTML
clear_html = lines.map{|x| x.gsub(/<[^<>]+>/,"")}
puts "tmp.html lines without html tags:".green
pp clear_html

# Save output in file
# https://stackoverflow.com/a/18900669/8574922
File.open('tmp_out.html','w') do |f|
    clear_html.each{ |l| f.write(l)}
end