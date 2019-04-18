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
    data = data.map{|x,y| y.uniq.count}.max
    data ? data : -1
end

def runnersMeetings_javes_w96(s, u)
    meetings = 1
    (0...s.size).each do |i|
        (i+1...s.size).each do |j|
            count = 0
            distDiff = s[j] - s[i]
            speedDiff = u[i] - u[j]
            next if speedDiff == 0 && distDiff != 0
            (0...s.size).each do |k|
                count += 1 if s[k] * speedDiff + u[k] * distDiff == s[i] * speedDiff + u[i] * distDiff 
            end
            meetings = count if count > meetings
        end
    end
    meetings = -1 if meetings < 2
    meetings
end

tests = [
    {startPosition: [1, 4, 2], speed: [27, 18, 24], answer: 3}
]
failed_test = [
    {startPosition: [321, 487, -601, 246, -623, 447, -313, 987, 444, -455, 606, -370, -678, 422, -623, 513, -617, 500, -58, 856, -491, -601, -725, -989, -521],
         speed: [34, 47, 31, 1, 18, 48, 43, 8, 48, 30, 40, 12, 45, 41, 39, 25, 43, 47, 15, 47, 11, 38, 43, 12, 10],
          answer: 3},
    {startPosition: [-4715, 2503, -3594, -9444, 612, -8704, 586, -7428, 15, 1734, -2916, -2506, -6588, -3943, 5755, -8804, 5565, -9411, 4264, -5661, -1013, -4671, 10000, -9642, 2709, -3929, -4326, 2019, -348, 8530, -2782, -3358, -4125, -9901, 8943, -6084, 4744, -1371, 7708, 4920, -886, -3766, 239, 7036, -9964, 254, 8654, 5421, 3769, -9919, -665, 5469, 4690, 5928, 7868, 320, -6593, 7714, 9320, -3323, -147, 2367, 5328, -2978, -5455, 7224, -8856, 2974, 4495, 5747, 930, 780, 802, 3839, 2293, -10000, -485, 2643, -8543, -7991, -7109, 1298, 5236, -5206, 1509, -7974, 5168, -7893, 3067, -1103, -3706, -443, 8686, -7864, 3648, 5239, 5216, -4088, -597, 8758], 
        speed: [23, 66, 64, 84, 89, 96, 84, 86, 39, 15, 61, 1, 33, 28, 57, 63, 42, 85, 6, 12, 84, 100, 43, 38, 46, 94, 88, 2, 44, 81, 18, 22, 67, 37, 77, 14, 98, 75, 98, 91, 70, 80, 47, 56, 11, 90, 55, 82, 51, 42, 28, 10, 89, 32, 55, 65, 76, 25, 73, 73, 96, 74, 29, 84, 59, 78, 76, 71, 41, 47, 45, 100, 56, 95, 66, 35, 72, 90, 50, 91, 25, 24, 98, 77, 94, 26, 93, 31, 23, 91, 84, 65, 75, 96, 86, 88, 71, 89, 56, 5], answer: 3},
]



describe "RunnersMeetings" do
    it "shold works" do
        tests.each do |test|
            assert_equal test[:answer], runnersMeetings(test[:startPosition],test[:speed])
        end
    end
    it "my solution fails of these test" do
        failed_test.each do |test|
            refute_equal test[:answer], runnersMeetings(test[:startPosition],test[:speed])
        end
    end
end

describe "RunnersMeetings james w96" do
    it "shold works" do
        tests.each do |test|
            assert_equal test[:answer], runnersMeetings_javes_w96(test[:startPosition],test[:speed])
        end
    end
    it "my solution fails of these test must work" do
        failed_test.each do |test|
            assert_equal test[:answer], runnersMeetings_javes_w96(test[:startPosition],test[:speed])
        end
    end
end
