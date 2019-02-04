p "alias x='ruby 20190204_Monday/20190204.rb'" 

# Ruby 5 ways of checking substring matching + keyword arguments.


require "colorize"

# https://thoughtbot.com/blog/ruby-2-keyword-arguments

def substring_test(stack: , needle: )
    puts "string: %s ; substring: %s" % [stack.green, needle.cyan]
    p [
        /#{needle}/ === stack ? true : false,
        stack =~ /#{needle}/ ? true : false,
        stack[needle] ? true : false,
        stack[/#{needle}/] ? true : false,
        stack.include?(needle) ? true : false
    ]
end

substring_test(stack:"Hello world", needle: "world")
substring_test(stack:"one", needle:"two")
substring_test(stack:"one two", needle: "two")

