p "alias x='ruby 20200901_Tuesday/20200901.rb'" 

# Codewars.com: Texting with an old-school mobile phone.
# https://www.codewars.com/kata/5ca24526b534ce0018a137b5 Texting with an old-school mobile phone.
# https://gist.github.com/lbvf50mobile/1b71746e4fc04c53cd1de045efb8be21 js.
# https://gist.github.com/lbvf50mobile/4c1a1800039cf6d94ca3f14b4b3db220#file-sentmessage-php php.


h = {
    ?1 => '.,?!',
    ?2 => 'abc',
    ?3 => 'def',
    ?4 => 'ghi',
    ?5 => 'jkl',
    ?6 => 'mno',
    ?7 => 'pqrs',
    ?8 => 'tuv',
    ?9 => 'wxyz',
    ?* => "'-+=",
    ?0 => " ",
}

ans = {}

# From a to z.
(?a..?z).each do |x|
    index = nil
    character = nil
    '1234567890*'.chars.each do |char|
        index = h[char].index(x)
        character = char
        break if index
    end
    raise "Could not find #{x}." if !(index && character)
    ans[x] = character * (index +1 )
    ans[x.upcase] = character * (index +1 )
end
# Numbers.
'1234567890#*'.chars.each do |x|
    ans[x] = x + ?-
end
# not alphanumberic
('.,?!' + "'-+=" + " " ).chars.each do |x|
    index = nil
    character = nil
    '1234567890*'.chars.each do |char|
        index = h[char].index(x)
        character = char
        break if index
    end
    raise "Could not find #{x}." if !(index && character)
    ans[x] = character * (index +1 )
end

p ans

# create php string
php = "<?php\n $hash = [\n"
ans.each do |key,value|
    php += "\"#{key}\"=> \"#{value}\", "
end
php += "\n];\n"

File.write(__dir__+"/hash.php", php)

# create php string
js = "const hash = {\n"
ans.each do |key,value|
    js += "\"#{key}\": \"#{value}\", "
end
js += "\n};\n"

File.write(__dir__+"/hash.js", js)


