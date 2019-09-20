p "alias x='ruby 20190920_Friday/20190920.rb'" 

# Ruby: -5/2 != -(5/2);

# https://stackoverflow.com/questions/58030928/ruby-language-curious-integer-arithmetic-5-2-5-2

answer =  -5/2 != -(5/2)
p  answer

spec = <<-DOC
whose value is the largest integer smaller than or equal to n.
DOC

p spec.strip