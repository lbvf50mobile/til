p "alias x='ruby 20190605_Wednesday/20190605.rb'" 

# Chess triangle.

# Consider a bishop, a knight and a rook on an n × m chessboard. 
# They are said to form a triangle if each piece attacks exactly 
# one other piece and is attacked by exactly one piece.
# Calculate the number of ways to choose positions of the pieces to 
# form a triangle.

# For n = 2 and m = 3, the output should be
# chessTriangle(n, m) = 8.

# https://medium.com/@tchryssos/array-combinations-and-permutations-f9599ac5d403


def valid (x,y,n,m); x.between?(0,m-1) && y.between?(0,n-1) end 

def chessTriangle(n,m)
    type = [
        {t:'k', delta: [ [1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1],[-1,2]]},
        {t:'b', delta:[[1,1],[1,-1],[-1,-1],[-1,1]]},
        {t:'r', delta:[[0,1],[1,0],[0,-1],[-1,0]]}
    ]
    v = ->a{ a[0].between?(0,m-1) && a[1].between?(0,n-1)}
    m.times do |x|
        n.times do |y|
            type.permutation(3) do |a,b,c|
                # Selected sells that beat by first point [[x,y], [x1,y1]]
                point12 = a[:delta].map{|dx,dy| {p1: [x,y],p2:[x+dx,y+dy],t: a[:t]+b[:t]}}.select{|arr| v[arr[:p2]]}
                p point12
                
            end
        end
    end

end

chessTriangle(2,3)