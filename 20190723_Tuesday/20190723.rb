p "alias x='ruby 20190723_Tuesday/20190723.rb'" 

# Ruby Date.valid_date?(year, month, day); Date.new(year, month, day).strftime('%A');  Date.strptime('03-02-2001', '%d-%m-%Y');

require 'date'
def dayOfWeek(birthdayDate)
    month, day, year = birthdayDate.split(?-).map{|x| x.to_i}
    weekday = Date.new(year,month,day).strftime('%A')
    (year+1).step(by: 1).take(1000).to_a.map{|x| Date.valid_date?(x,month,day) ? Date.new(x,month,day).strftime('%A') : nil }.index(weekday) + 1
end

# https://stackoverflow.com/questions/2955830/how-to-check-if-a-string-is-a-valid-date
p dayOfWeek("02-01-2016")
p dayOfWeek('02-29-2016')
