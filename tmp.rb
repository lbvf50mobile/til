require 'prime'

 p 10001.times.select{|x| Prime.prime?(x)}