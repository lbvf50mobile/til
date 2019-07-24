p "alias x='ruby 20190724_Wednesday/20190724.rb'" 

# Ruby DateTime#strftime %F, %R, %s.

require 'date'
def curiousClock(someTime, leavingTime)
    to_sec = ->x{DateTime.strptime(x, '%F %R').strftime('%s').to_i}
    DateTime.strptime((2 * to_sec[someTime] - to_sec[leavingTime]).to_s,'%s').strftime('%F %R')
end

p "2016-08-24 11:20" == curiousClock("2016-08-26 22:40", "2016-08-29 10:00")