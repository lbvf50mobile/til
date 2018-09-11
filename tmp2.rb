require "colorize"
require "pp"


puts "Helping user Black Olieve".green

=begin
Допустим, есть хэш Product, и у него такие параметры:
- min_delivery_day (минимальный срок доставки);
- cost (цена);
- qnt (количество);
- rating (рейтинг).

Надо произвести сортировку:
1. Ищем минимальную цену среди первого минимального срока. С рейтингом больше 40. 
2. Ищем следующую минимальную цену среди двух наименьших сроков. С рейтингом больше 40. (И ценой меньше чем в пункте №1. Иначе с количеством более (X*2) из пункта №1.
3. Ищем следующую минимальную цену среди всех сроков. С рейтингом больше 20. (И ценой меньше чем в пункте №1 И №2. Иначе с количеством более (X*2) из пункта №1 И №2.
4. Ищем следующую минимальную цену среди всех сроков. С рейтингом больше 0. (И ценой меньше чем в пункте №1 И №2 И №3. Иначе с количеством более (X*2) из пункта №1 И №2 И №3.

Даже незнаю, возможна ли сделать такую сортировку!
=end

def factory(min_delivery_day: 1, cost: 2, qnt: 7,  rating: 155 )
    {min_delivery_day: min_delivery_day, cost: cost, qnt: qnt,  rating: rating}
end

def creator(number: 5)
    ans = []
    number.times do
        ans.push factory(min_delivery_day: rand(100)+1, cost: rand(100)+1, qnt: rand(100)+1,  rating: rand(100)+1 )
    end
    ans
end

# Ищем минимальную цену среди первого минимального срока. С рейтингом больше 40. 
puts "Ищем минимальную цену среди первого минимального срока. С рейтингом больше 40.".red
x = creator
pp x
min_delivery_day = x.min_by{|y| y[:min_delivery_day]}[:min_delivery_day]
puts "Min delivery day:".cyan
p min_delivery_day
puts "Answer:".cyan
pp x.select{|y| y[:rating] > 40 && y[:min_delivery_day] == min_delivery_day }.min_by{|y| y[:min_delivery_day]}