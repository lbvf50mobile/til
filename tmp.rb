# https://leetcode.com/problems/nim-game/
# https://gist.github.com/lbvf50mobile/f8b22caacea83b61234f99e025e1ddee

def can_win_nim(n)
    n % 4 != 0
end

def can_win_nim1(n)
    @win = false;
    dfs(n,true)
    @win
end

def dfs(n,myturn)
    return if @win
    if n <= 3
        @win = true if myturn
        return
    end
    (1..3).each do |x|
        dfs(n-x,!myturn)
    end
end

(1..10).each do |x|
    p [x,can_win_nim(x)]
end

