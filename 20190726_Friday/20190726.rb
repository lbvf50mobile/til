p "alias x='ruby 20190726_Friday/20190726.rb'" 

# Ruby Regex Grouping without capturing (?:...)

def nthNumber(s, n)
    pattern = /(?:\D*\d+\D*){#{n-1}}0*(\d+)/ # https://ruby-doc.org/core-2.5.1/Regexp.html#class-Regexp-label-Grouping
    return pattern.match(s)[1]
end

p '233'  == nthNumber("8one 003number 201numbers li-000233le number444",4)