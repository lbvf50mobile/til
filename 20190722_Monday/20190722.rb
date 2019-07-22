p "alias x='ruby 20190722_Monday/20190722.rb'" 

# Ruby Integer#gcd (greatest common divsior)


# https://apidock.com/ruby/Integer/gcd
def videoPart(part, total)
    seconds = ->(a,b,c){a*60*60 + b *60 + c}
    pt,tl = seconds[*part.split(?:).map(&:to_i)],seconds[*total.split(?:).map(&:to_i)]
    gcd = pt.gcd(tl)
    [pt/gcd, tl/gcd]
 end

 p videoPart("02:20:00", "07:00:00");