class PawnRace
    def str2crd(cell); [cell[0].ord - ?a.ord ,cell[1].to_i - 1] end
    def crd2str(str); (str[0] + ?a.ord).chr + (str[1] + 1).to_s end
    def on_board(x);  x[0].between?(0,7) && x[1].between?(0,7) end
    def in_front_of(w,b); str2crd(w)[0] == str2crd(b)[0] && str2crd(b)[1] > str2crd(w)[1] end 
    def capture(w,b) 
        wdx = [[-1,1],[1,1]]
        bdx = [[-1,-1],[1,-1]]
        return true if wdx.map{|dx,dy| [str2crd(w)[0]+dx, str2crd(w)[1]+dy]}.select{|x| on_board(x)}.map{|x| crd2str(x)}.include?(b)
        return true if bdx.map{|dx,dy| [str2crd(b)[0]+dx, str2crd(b)[1]+dy]}.select{|x| on_board(x)}.map{|x| crd2str(x)}.include?(w)
        false
    end
    def pawnRace(w, b, toMove)
        return 'draw' if in_front_of(w,b)
        return 'w' == toMove ? 'white' : 'black' if capture(w,b)
        ax, ay = str2crd(w)
        bx,by = str2crd(b)
        return 'white' if  7 == ay
        return 'black' if  0 == by
        if ?w == toMove && 1 == ay
            dif = by - ay
            # when to make one move
            if [ax-1,ax+1].include?(bx) && dif.positive? && diff.odd?
                return pawnRace(crd2str([ax, ay+1]), b, ?b)
            end
            return pawnRace(crd2str([ax, ay+2]), b, ?b)
        end
        if ?b == toMove && 6 == by
            dif = by - ay
            # when to make one move
            if [bx-1,bx+1].include?(ax) && dif.positive? && diff.odd?
                return pawnRace(w,crd2str([bx, by-1]),?w)
            end
            return pawnRace(w, crd2str([bx, by-2]),?w)
        end
    end 
    return ?w == toMove ? pawnRace(crd2str([ax, ay+1]), b, ?b) : pawnRace(w,crd2str([bx, by-1]),?w)
end