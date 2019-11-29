# https://leetcode.com/problems/nim-game/


def can_win_nim(n)
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

