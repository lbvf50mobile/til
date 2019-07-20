class PawnRace
    def str2crd(cell); [cell[0].ord - ?a.ord ,cell[1].to_i - 1] end
    def crd2str(str); (str[0] + ?a.ord).chr + (str[1] + 1).to_s end
    def on_board(x);  x[0].between?(0,7) && x[1].between?(0,7) end
    def in_front_of(w,b); str2crd(w)[0] == str2crd(b)[0] && str2crd(b)[1] > str2crd(w)[1] end 
    def pawnRace(w, b, toMove)
        'draw' if in_front_of(w,b)
    end 
end