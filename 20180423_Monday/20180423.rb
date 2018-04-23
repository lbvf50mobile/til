# Pre-defined Ruby variables: $: $LOAD_PATH

# https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Variables_and_Constants#Pre-defined_Variables

p $:.join[0..100] + "..."

require "minitest/autorun"

describe "load path" do
    it "name equal alias" do
        assert_equal $:, $LOAD_PATH
    end
end
