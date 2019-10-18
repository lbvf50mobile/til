p "alias x='ruby 20191018_Friday/20191018.rb'" 

# Ruby: String#squeeze.

# https://ruby-doc.org/core-2.6/String.html#method-i-squeeze
# https://gist.github.com/lbvf50mobile/d89e81434b5c754f9c4ce4ff998426a9#file-unique_in_order-rb-L9

require "minitest/autorun"

describe "wonderfull method squeeze" do
    it "Have to reduce sequences of similar  characters to one character" do
        assert_equal "abcde", "aaaaaabbbbbbbcccccccccccccccdddddee".squeeze
    end
end