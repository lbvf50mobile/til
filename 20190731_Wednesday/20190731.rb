p "alias x='ruby 20190731_Wednesday/20190731.rb'" 

# Ruby /pat/m - Treat a newline as a character matched by dot (.); Lazy quantifiers.

# https://ruby-doc.org/core-2.5.1/Regexp.html#class-Regexp-label-Options
# https://javascript.info/regexp-greedy-and-lazy


def htmlTable(table, row, column)
    table.gsub!(/<th>(.*?)<\/th>/m,"")
    rows = table.scan(/<tr>(.*?)<\/tr>/m)
    columns =  rows.map{|x| x[0].scan(/<td>(.*?)<\/td>/m).map{|x| x[0]} }
    columns[row] && columns[row][column] ? columns[row][column] : 'No such cell'
end
  

hash = {
    table: "<table><tr><td>1</td><td>TWO</td></tr><tr><td>three</td><td>FoUr4</td></tr></table>",
row: 0,
column: 1,
}

p "TWO" == htmlTable(hash[:table], hash[:row], hash[:column])
