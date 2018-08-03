# Left match general for all strings.

def find_left_match (strings_array)
    answer = nil
    (strings_array.map{|string| string.size}.min).times do |index|
        cat_strings = strings_array.map{|string| string[0..index]}
        if cat_strings[1..-1].all? { |str| str == cat_strings[0]}
            answer = cat_strings[0]
        else
            break
        end
    end
    answer
end


require "minitest/autorun"

describe "Left match general for all strings." do
    it "find abc" do
        assert_equal "abc",find_left_match(%w{abc1 abc2 abc3 abc4})
        assert_equal "a",find_left_match(%w{a asdsdfsdf a234234 a23423432})
        assert_equal "a",find_left_match(%w{a})
        refute_equal "a",find_left_match(%w{b})
    end
end