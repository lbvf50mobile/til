p "alias x='ruby 20190417_Wednesday/20190417.rb'" 

# Ruby runnersMeetings problem two solutions.
require "minitest/autorun"
def runnersMeetings(s, u)
    data = s.zip(u).each_with_index.map{|(s,u),i| [s,u,i]}.combination(2)
        .reduce({}){ |memo,((s1,u1,i1),(s2,u2,i2))| 
            if s1 == s2
                time = 0
                value = [i1,i2]
                memo[time].nil? ? memo[time] = value : memo[time] += value 
            end
            if u1 != u2 && 0 <= (s2-s1).to_f/(u1-u2)
                
                time = ((s2-s1).to_f/(u1-u2).to_f)
                
                value = [i1,i2]
                memo[time].nil? ? memo[time] = value : memo[time] += value 
            end
            memo
            }
    p data
    data = data.map{|x,y| y.uniq.count}.max
    data ? data : -1
end

tests = [
    {startPosition: [1, 4, 2], speed: [27, 18, 24], answer: 3}
]



describe "RunnersMeetings" do
    it "shold works" do
        tests.each do |test|
            assert_equal test[:answer], runnersMeetings(test[:startPosition],test[:speed])
        end
    end
end