p "alias x='ruby 20201002_Friday/20201002.rb'" 

# https://www.codewars.com/kata/526d42b6526963598d0004db Caesar Cipher Helper.

p (?A..?Z).to_a.size

ch2n = "self.ch2n = {"

(?A..?Z).each_with_index{|x,i| ch2n += "'#{x}':#{i},"}
ch2n = ch2n[0...-1]
ch2n += "}"

puts ch2n


n2ch = "self.n2ch = {"

(?A..?Z).each_with_index{|x,i| n2ch += "#{i}:'#{x}',"}
n2ch = n2ch[0...-1]
n2ch += "}"

puts n2ch