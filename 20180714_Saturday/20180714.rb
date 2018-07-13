# String#gsub with a block.
p "alias x='ruby 20180714_Saturday/20180714.rb'" 

# "Ruby is a COOL language!" (WIN)
p "rubyisacoollanguage".gsub(/(ruby)(is)(a)(cool)(language)/) {
   p "one " + $1.capitalize + " %s %s %s %s!" % [$2,$3,$4.upcase,$5]
}

# #<Enumerator: "rubyisacoollanguage":gsub(/(ruby)(is)(a)(cool)(language)/)> (WIN)
p "rubyisacoollanguage".gsub(/(ruby)(is)(a)(cool)(language)/) do
    p "two " + $1.capitalize + " %s %s %s %s!" % [$2,$3,$4.upcase,$5]
end