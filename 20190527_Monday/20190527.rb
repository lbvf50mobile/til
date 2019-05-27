p "alias x='ruby 20190527_Monday/20190527.rb'" 

# Ruby 'rescue' in the end of a method block to catch error in this method. (@davydovanton)

#https://github.com/davydovanton/vim-html2slim/blob/master/plugin/html2slim.vim

def test_rescue
    some_error
rescue 
    puts "An error Happens"
    
end

test_rescue
require "colorize"
def test_rescue2
    some_error
rescue StandardError => e
    puts "Test_rescue2 method."
    puts "Text is: %s " % [e.to_s.red]
end

test_rescue2
