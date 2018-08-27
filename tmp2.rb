require "colorize"
require "minitest/autorun"


puts "Fix New Lines in Dovlatov's text.".green

class CheckStr
    attr_reader :str, :right_blank_free
    def initialize str
        @str = str
        @right_blank_free = str.gsub(/[[:space:]]+$/,"")
    end
    def punctuation_last?
        @right_blank_free.match(/[.,!?.,!?;:]$/)
    end
end

describe CheckStr do
    it "should be CheckStr" do
        assert_kind_of CheckStr, CheckStr.new("Line")
    end
    it "Should take all blansk from right side" do
        assert_equal "Привет", CheckStr.new("Привет    ").right_blank_free
        assert_equal "Привет Пакет Привет", CheckStr.new("Привет Пакет Привет    ").right_blank_free
    end
    it "Should mark when last is punktuation" do
        assert CheckStr.new("Привет это хорошо.    ").punctuation_last?
        assert CheckStr.new("Привет это хорошо нормально,    ").punctuation_last?
        assert CheckStr.new("Привет это хорошо нормально, да!    ").punctuation_last?
        assert CheckStr.new("Привет это хорошо нормально, да или нет?    ").punctuation_last?
        refute CheckStr.new("Привет это хорошо нормально, да или нет    ").punctuation_last?
    end
end

lines = File.readlines('data/dovlatov_boots_raw.txt').reduce([]) do |memo, line|
    if memo.last && (!CheckStr.new(memo.last).punctuation_last?)
        memo[memo.size - 1] = CheckStr.new(memo.last).right_blank_free + " " + line.strip
    else
        memo.push line.strip
    end
    memo
end
File.open('data/dovlatov_boots.txt', 'w+') do |f|
    # lines.map{|x| x.gsub("\n","\r\n")}
    lines =  lines.reject{|x| x.match(/^[[:space:]]+$/)}.each_slice(50).to_a.map{|x| x.push "\r\n"}.flatten
    f.puts(lines)
end