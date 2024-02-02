


def num(s,l) 
  ans = 0
  l.times do 
    ans = ans*10 + s
    s += 1
  end
  return ans
end

(1..9).each do |l|
  # when 1 => 9
  # when 9 => 1
  (1..(10-l)).each do |s|
    puts "#{num(s,l)},"
  end
end
