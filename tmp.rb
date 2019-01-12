require "colorize"
# https://goo.gl/Gfqs6o

lambda = ->(raz:, dva:, tri:, **chetire){
    puts "This is raz %s" % [raz.green]
    puts "this is dva %s" %  [dva.cyan]
    puts "This is try %s" % [tri.blue]
    puts "this is chetire %s" % [chetire.to_s.green]
}

p lambda.class
lambda.(%i{raz dva tri chetire pyat shyest ruby classno sho etst}
    .map{|x| [x,x.to_s]}.to_h)

# https://goo.gl/Gfqs6o