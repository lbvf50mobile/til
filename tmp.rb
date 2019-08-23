require 'date'
start_date = Date.new(2019,8,23)
finish_date = Date.new(2019,9,23)
date = start_date.clone
count_working_days = 0 
count_working_days += 1 if /[^67]/ === date.strftime('%u') 
while true do
    date += 1
    count_working_days += 1 if /[^67]/ === date.strftime('%u') 
    break if date == finish_date 
end

puts "From #{start_date} to #{finish_date} there are #{count_working_days} working days (including)"

