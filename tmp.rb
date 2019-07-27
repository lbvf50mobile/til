def isSubsequence(t, s)
    pattern = ''
    s.split('').each do |ch|
        pattern += '.*'+ch
    end
    re = Regexp.new pattern
    return !!(t =~ re)
end

p isSubsequence('CodeSignal','CoSi')