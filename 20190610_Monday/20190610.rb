p "alias x='ruby 20190610_Monday/20190610.rb'" 

require 'minitest/autorun'

def on_board(x);  x[0].between?(0,7) && x[1].between?(0,7) end
def coord(cell); [cell[0].ord - ?a.ord ,cell[1].to_i - 1] end
def knight; [[1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1],[-1,2]] end
def rook
    ([[[0,1],[0,-1],[1,0],[-1,0]]] * 8)
        .map
        .with_index(1){|x,i| [[0,1*i],[0,-1*i],[1*i,0],[-1*i,0]]}
        .flatten(1)
end
def bishop
    ([[[-1,1],[1,1],[1,-1],[-1,-1]]] * 8)
        .map
        .with_index(1){|x,i| [[-i,i],[i,i],[i,-i],[-i,-i]]}
        .flatten(1)
end
def king; [[-1,-1],[-1,0],[-1,1],[0,1],[1,1],[1,0],[1,-1],[0,-1]] end;
def amazon; knight + rook + bishop end;
def board
    ans = []
    (0..7).each do |y|
        (0..7).each do |x|
            ans.push([x,y])
        end
    end
    ans
end
def moves arr, piece
    arr.map{|dx,dy| [piece[0]+dx,piece[1]+dy]}.select{|x| on_board(x)}
end

def amazonCheckmate(k_, a_)
    k = coord(k_)
    a = coord(a_)
    all = board.select{|x| on_board(x)}
    used = [k,a]
    k_attacks = moves(king,k)
    a_attacks = moves(amazon,a)
    
    place_for_checkmate = (a_attacks - used - k_attacks).uniq
    can_be_free = (all - used - a_attacks - k_attacks).uniq
    
    # it's checkmate (i.e. black's king is under amazon's attack and it cannot make a valid move);
    checkmate = place_for_checkmate
        .reduce(0){|memo,v| moves(king,v).any?{|x| can_be_free.include?(x)} ? memo : memo+=1; memo  }
    # it's check (i.e. black's king is under amazon's attack but it can reach a safe square in one move);
    check = place_for_checkmate
        .reduce(0){|memo,v|  moves(king,v).any?{|x| can_be_free.include?(x)} ? memo+=1: memo; memo }
    # it's stalemate (i.e. black's king is on a safe square but it cannot make a valid move);
    stalemate = can_be_free
    .reduce(0){|memo,v| moves(king,v).any?{|x| can_be_free.include?(x)} ? memo : memo+=1; memo  }
    # black's king is on a safe square and it can make a valid move.
    safe = can_be_free
    .reduce(0){|memo,v| moves(king,v).any?{|x| can_be_free.include?(x)} ? memo +=1 : memo; memo  }
    [checkmate, check, stalemate, safe ] # dirty hack with -1 and +1
end


describe "test" do
    it 'works' do
        assert_equal [5, 21, 0, 29], amazonCheckmate('d3','e4')
    end

end

