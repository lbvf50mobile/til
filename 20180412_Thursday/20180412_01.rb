# A block to a proc.
def caban &x
    puts "x.call"
    x.call
    puts "convert proc to bloc"
    loop &x
end
words = %w{one two three}.each
caban do |z|
    p  words.next # raise StopIteration here
end
