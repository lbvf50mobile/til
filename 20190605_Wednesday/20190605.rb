p "alias x='ruby 20190605_Wednesday/20190605.rb'" 

# Ruby Chess triangle.

# https://gist.github.com/lbvf50mobile/2e4f8b906526f28f5afe6ef5846c3008

# Consider a bishop, a knight and a rook on an n × m chessboard. 
# They are said to form a triangle if each piece attacks exactly 
# one other piece and is attacked by exactly one piece.
# Calculate the number of ways to choose positions of the pieces to 
# form a triangle.

# For n = 2 and m = 3, the output should be
# chessTriangle(n, m) = 8.

# https://medium.com/@tchryssos/array-combinations-and-permutations-f9599ac5d403




def type 
     [
    {t:'k', delta: [ [1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1],[-1,2]]},
    {t:'b', delta:[[1,1],[1,-1],[-1,-1],[-1,1],
        [2,2],[2,-2],[-2,-2],[-2,2],
        [3,3],[3,-3],[-3,-3],[-3,3],
        [4,4],[4,-4],[-4,-4],[-4,4],
        ]},
    {t:'r', delta:[[0,1],[1,0],[0,-1],[-1,0],
        [0,2],[2,0],[0,-2],[-2,0],
        [0,3],[3,0],[0,-3],[-3,0],
        [0,4],[4,0],[0,-4],[-4,0],
        ]}
]
end

def check_validnes hash
    a = hash[:p1]
    b = hash[:p2]
    c = hash[:p3]
    delta = ->y{ type.select{|x| x[:t] == y}[0][:delta] }
    values = ->(x,delta){ delta.map{|dx,dy| [x[0]+dx,x[1]+dy]}}
    delta_a = delta[hash[:t][0]]
    delta_b = delta[hash[:t][1]]
    delta_c = delta[hash[:t][2]]
    a1 = values[a,delta_a].any?{|x| x == b} 
    b1 = values[b,delta_b].any?{|x| x == c}
    c1 = values[c,delta_c].any?{|x| x == a}
    a1 && b1 && c1
end
require "colorize"
def show23 arr
    puts arr[3].green
    (0..2).reverse_each do |y|
        str = "---"
        (0..3).reverse_each do |x|
            v = arr.select{|x1,y1,v| x1 == x && y1 == y}[0]
            str[x] = v[2] if v
            
        end
        puts str
    end
end

def sort_by_cell_order(n,m,triangle)
    ans = []
    n.times do |y|
        m.times do |x|
            tmp = triangle.select{|x1,y1,c| x1 == x && y1 == y }
            unless tmp.empty?
                tmp = tmp[0]
                ans.push(tmp)
            end
        end    
    end
    ans
end


def group_by_size variants
    variants.group_by{|x,y,z| [([x[0],y[0],z[0]].max - [x[0],y[0],z[0]].min + 1) ,(1 + [x[1],y[1],z[1]].max - [x[1],y[1],z[1]].min)]}
    .map{|k,v| [k,v.size]}.to_h
end

def chessTriangle(n,m)
    
    variants = []
    v = ->a{ a[0].between?(0,m-1) && a[1].between?(0,n-1)}
    m.times do |x|
        n.times do |y|
            type.permutation(3) do |a,b,c|
                # Selected sells that beat by first point [[x,y], [x1,y1]]
                point12 = a[:delta].map{|dx,dy| {p1: [x,y],p2:[x+dx,y+dy],t: a[:t]+b[:t]}}.select{|arr| v[arr[:p2]]}
                point123 = point12.map do |p12| 
                    b[:delta].map{|dx,dy| {p1: p12[:p1],p2:p12[:p2], p3: [p12[:p2][0]+dx,p12[:p2][1]+dy], t: a[:t]+b[:t]+c[:t]}}
                    .select{|p123| v[p123[:p3]]}
                    .select{|p123| c[:delta].any?{|dx,dy| p123[:p1]==[p123[:p3][0]+dx,p123[:p3][1]+dy]}}
                end.flatten.uniq
                variants = variants + point123
                
            end
        end
    end
    variants.uniq!
    valid = variants.all?{|x| check_validnes(x)}
    variants = variants.reduce([]) do |memo,x| 
        memo.push( [[*x[:p1],x[:t][0]],[*x[:p2],x[:t][1]],[*x[:p3],x[:t][2]]]); 
    end
    throw 'Invalind variants' unless valid
    variants.map!{|x| sort_by_cell_order(n,m,x) }
    variants.uniq!
    puts "%s. %s #{variants.first}" % ["#{n}x#{m}".red, variants.size.to_s.green]
    puts "Possible gabarits #{group_by_size(variants)}"
end

chessTriangle(7,7)
chessTriangle(2,3)
chessTriangle(3,2)
chessTriangle(2,4)
chessTriangle(4,2)
chessTriangle(3,3)
chessTriangle(5,2)

