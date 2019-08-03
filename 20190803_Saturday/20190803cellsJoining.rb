p "alias x='ruby __FULL_DATE__/DATE____TASK__.rb'" 

# Ruby __TASK__

require "minitest/autorun"
require_relative "__TASK__.rb"
require 'ostruct'

describe "__TASK__" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                input: "1",
                answer: 1
            }),
        ].each{|x| assert_equal x.answer, Task.new.__TASK__(x.input)}
    end
end
