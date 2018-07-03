# 'ruby -e' multyline command. 

#  http://tldp.org/LDP/abs/html/here-docs.html
#  A here document is a special-purpose code block. It uses a form of I/O redirection to feed a command list to an interactive program or a command, such as ftp, cat, or the ex text editor.
echo "alias x='bash 20180702_Monday/20180702.sh'" 
cat <<IlikeBash
One
two
three
fore
file
IlikeBash
echo 'a
 x'
ruby -e "require 'colorize' 
(1..10).each do |x| 
    x.even? ? puts(x.to_s.green) : puts(x.to_s.red) 
end"
ruby -e <<IlikeRuby
    echo "this is Ruby and this is cool"
IlikeRuby