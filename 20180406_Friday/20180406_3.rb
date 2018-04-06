# Using 'or' in parentheses
puts "Using 'or' in parentheses"

def hi(name)
    puts "Hi " + (name or "Stranger")
end
def hi_big(name)
    puts "Hi " + (name OR "Stranger")
end

hi("Vasa")
hi(nil)
begin
hi_big("Vasa")
hi_big(nil)
rescue
    p $!
end
