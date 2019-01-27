p "alias x='ruby 20190127_Sunday/20190127.rb'" 

# Ruby && || gap.

# https://gist.github.com/lbvf50mobile/b0f2ae5d0e0bd8ac5375a1a9a80c502c

true && ->{puts "one"; false }.call || ->{puts "two"}.call 
(true && ->{puts "one"; false} || ->{puts "two"}).call