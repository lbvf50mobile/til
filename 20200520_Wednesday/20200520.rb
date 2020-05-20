p "alias x='ruby 20200520_Wednesday/20200520.rb'" 

# Concatenations sum.
# https://gist.github.com/lbvf50mobile/fa820112523ef79ac8b109ece2502e37

puts "Contacetantions sum."

def str(a)
    sum = 0
    a.each do |x|
        a.each do |y|
            sum += "#{x}#{y}".to_i
        end
    end
    sum
end

def optimize(a)
    sum1 = a.reduce(&:+)
    sum2 = a.reduce(0){|acc,x| acc + 10**(Math.log10(x).to_i+1)}
    a.reduce(0){|acc,x| acc + x*sum2 + sum1}
end

def generate(size)
    Array.new(size).map{ rand(10**6)+1}
end

array = [1,2]

if(str(array) == optimize(array))
    puts "Correct!"
else
    puts "Fail!"
end



array = generate(50)

if(str(array) == optimize(array))
    puts "Correct!"
else
    puts "Fail!"
end

if Array.new(100).map{ array = generate(50); str(array) == optimize(array) }.all?
    puts "100 times Correct!"
else    
    puts "Fail! 100 times."
end

