# Resque Example from https://github.com/davydovanton/vim-html2slim/blob/master/plugin/html2slim.vim
def test_rescue
    some_error
rescue 
    puts "An error Happens"
    
end

test_rescue
