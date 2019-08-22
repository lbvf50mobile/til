p "alias x='ruby 20190822_Thursday/20190822.rb'" 

# Ruby \b and swapcase.

def string_transformer(str)
    str.split(/\b/).reverse.map(&:swapcase).join
end

p string_transformer("This  is the    test.")