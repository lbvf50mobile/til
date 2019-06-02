p "alias x='ruby 20190603_Monday/20190603.rb'" 

# Ruby: Chess cell white if sum One-based column and row is odd.
require 'colorize'

def c2i x; x.ord - ?a.ord + 1 end
(1..8).reverse_each do |row|
    str_row = ""
(?a..?h).each do |col|
        c = c2i(col)
        r = row
        s = c+r
        str_row += ("#{col}#{row} %s+%s=%s " % 
            [c.to_s,r.to_s,s.even? ? s.to_s.red : s.to_s.green])
end
puts str_row
end
