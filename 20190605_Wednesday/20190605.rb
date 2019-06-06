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
    {t:'b', delta:[[1,1],[1,-1],[-1,-1],[-1,1]]},
    {t:'r', delta:[[0,1],[1,0],[0,-1],[-1,0]]}
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
    valid = variants.all?{|x| check_validnes(x)}
    #p "valid #{valid}"
    variants = variants.map{|x| a,b,c = x[:t].chars; a1,b1,c1 = x[:p1], x[:p2], x[:p3]; [[*a1,a],[*b1,b],[*c1,c]]}
    .sort{|a,b,c| (a[0] <=> b[0]) == 0 ? a[1] <=> b[1] : a[0] <=> b[0]}
    .map{|x| 
        a,b,c = x
        at,bt,ct = a[2],b[2],c[2]
        adelta = "#{b[0]-a[0]}#{b[1]-a[1]}" 
        bdelta = "#{c[0]-b[0]}#{c[1]-b[1]}"
        name = at+adelta+bt+bdelta+ct
        [*x,name]  
    }
    # p variants.first
    # p "arter sort; varians #{variants.size}, variantes.uniq #{variants.uniq.size}, valid #{valid}"
    # variants.each.with_index{|x,i|p i; show23 x}
    names = variants.map{|x| x.last}
    # puts names.join('; ').red
    # puts names.uniq.sort.join('; ').green

    #puts names.uniq.first.to_s.green
    #puts names.uniq.size

    # I think part of variants id dublicated because the same triangle cold be counted from different points.
    # because there is 3 figures and each counts as a triagle.
    # Idea is to count triangle by it's gabarit size and where is to point it's 0.0

    # calculate gabarit boxes [min[x1,x2,x3] min[y1,y2,y3]] = box point
    box_vars = variants
    .map{|a,b,c,name| 
        point = [[a[0],b[0],c[0]].min,[a[1],b[1],c[1]].min]
        dx,dy = point
        a = [a[0]-dx,a[1]-dy,a[2]]
        b = [b[0]-dx,b[1]-dy,b[2]]
        c = [c[0]-dx,c[1]-dy,c[2]]
        points = [a,b,c]
        fullname = "#{dx}:#{dy};"
        figures = ""
        coords = ""
        10.times do |y|
            10.times do |x|
                tmp = points.select{|z| z[0] == x && z[1] == y}
                if !tmp.empty?
                    tmp = tmp[0]
                    fullname += "#{tmp[2]}#{tmp[0]}:#{tmp[1]};"
                    figures += "#{tmp[2]}#{tmp[0]}:#{tmp[1]};"
                    coords += "#{tmp[2]}#{tmp[0]+dx}:#{tmp[1]+dy};"
                end
            end
        end
        # [point,a,b,c,name,fullname]
        [name,fullname,figures, coords]
        
    }
    names = box_vars.map{|x| x[0]}.uniq
    fullnames = box_vars.map{|x| x[1]}.uniq
    figures = box_vars.map{|x| x[2]}.uniq
    coords = box_vars.map{|x| x[3]}.uniq
    puts "#{n}x#{m}"
    puts "fullnames #{fullnames.size} #{fullnames[0..2]}"
    puts "names #{names.size} #{names[0..2]}"
    puts "figures #{figures.size} #{figures[0..2]}"
    puts "coords #{coords.size} #{coords[0..2]}"


    
     

 
     


end
chessTriangle(3,3)
# chessTriangle(4,4)
# chessTriangle(5,5)