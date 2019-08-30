def add_binary(a, b)
    prev, ans = 0, ''
    i, j = a.size - 1, b.size - 1
    while i >=0 || j >= 0 do
        first = i >= 0 ? a[i].to_i : 0
        second = j >= 0 ? a[j].to_i : 0
        sum = first + second + prev
        p "i = #{i} and j = #{j}"
        p [first, second, prev, sum]
        boom = [
            ->{ans = '0' + ans; prev = 0}, # 0
            ->{ans = '1' + ans; prev = 0}, # 1
            ->{ans = '0' + ans; prev = 1}, # 2
            ->{ans = '1' + ans; prev = 1} # 3
            ][sum]
        p boom
        boom.()
        i -= 1
        j -= 1
    end
        p ans
      ans = '1' + ans if 1 == prev
      ans
  end

require 'minitest/autorun'

describe 'add_binary' do
    it "sound 1 + 11" do
        assert_equal '100', add_binary('1','11')
    end
end