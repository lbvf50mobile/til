class Task
    def count_smileys(x)
        x.reduce(0){|memo,x| x.scan(/[;:][-~]?[)D]/).empty? ? memo : memo + 1}
    end
    def count_smileys1(x)
        x.grep(/[;:][-~]?[)D]/).size
    end
    def count_smileys2(x)
        x.count{|x| /[;:][-~]?[)D]/ === x }
    end
    def count_smileys3(x)
        x.count{|x| x =~ /[;:][-~]?[)D]/ }
    end
end
