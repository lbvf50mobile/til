# Send message to a Ruby object.
p "alias x='ruby 20180709_Monday/20180709.rb'" 
# http://rubylearning.com/blog/2010/11/03/do-you-understand-rubys-objects-messages-and-blocks/
# https://bparanj.gitbooks.io/ruby-basics/content/sender_receiver_message.html
class Bag
    def boo
        "booblik"
    end
end
pocket = Bag.new
require "colorize"
puts pocket.boo.green
puts pocket.send(:boo).send("red".to_sym)