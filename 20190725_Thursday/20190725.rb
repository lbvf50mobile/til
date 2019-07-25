p "alias x='ruby 20190725_Thursday/20190725.rb'" 

# Ruby Time.parse, strftime '%A',  Time + Fixnum.

require "time"
p Time.parse('2010-12-31 ' + '23:10').strftime("%A")
p (Time.parse('2010-12-31 ' + '23:10') + 60*60*24).strftime("%A")