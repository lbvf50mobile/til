p "alias x='ruby 20191227_Friday/20191227.rb'" 

# https://leetcode.com/problems/sequential-digits/

def generator size
    answer = []
    start = 0
    while start < 9
        digit_string = ""
        tmp = start 
        size.times do
            tmp = tmp + 1
            break if tmp > 9
            digit_string += tmp.to_s 
        end
        break if digit_string.size < size
        answer.push digit_string.to_i
        start += 1
    end
    answer
end

answer = []

(1..10).each do |n|
    tmp = generator(n)
    tmp = '{ '+tmp.join(', ') + '}'
    answer.push  tmp
end

p answer = "{\n"+answer.join(",\n") + "}\n"

File.write('20191227_Friday/20191227.go', answer)