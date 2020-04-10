p "alias x='ruby 20200410_Friday/20200410.rb'" 

# Ruby: Question from Eldan.

=begin
Eldan's question @ELDVN.     
Given a string - "The price of Nike Air Jordans in $120 "
Apply 15% discount to the money value and replace it in the string.
    
=end

def discount(str)
    str.gsub(/\$[0-9]+/){|x| price = x[/[0-9]+/].to_i;  price = price - price*15/100; "$#{price}"}
end

p discount("The price of Nike Air Jordans in $120 ") # "The price of Nike Air Jordans in $102 "
p (120 - 120*0.15) # 102.0