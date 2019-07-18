class Amazon
    def str2crd(cell); [cell[0].ord - ?a.ord ,cell[1].to_i - 1] end
def crd2str(str); (str[0] + ?a.ord).chr + (str[1] + 1).to_s end

def k_pos; [[1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1],[-1,2]] end
def on_board(x);  x[0].between?(0,7) && x[1].between?(0,7) end
def r_pos 
    top = ([1] * 8).map.with_index(1){|x,i| [0,i] }
    bottom = ([1] * 8).map.with_index(1){|x,i| [0,-i] }
    left = ([1] * 8).map.with_index(1){|x,i| [-i,0] }
    right = ([1] * 8).map.with_index(1){|x,i| [i,0] }
    top + bottom + left + right
end
def b_pos
    top_right = ([1] * 8).map.with_index(1){|x,i| [i,i] }
    bottom_right = ([1] * 8).map.with_index(1){|x,i| [i,-i] }
    top_left = ([1] * 8).map.with_index(1){|x,i| [-i,i] }
    bottom_left = ([1] * 8).map.with_index(1){|x,i| [-i,-i] }
    top_right + bottom_right + top_left + bottom_left
end
def kg_pos
    top = ([1] ).map.with_index(1){|x,i| [0,i] }
    bottom = ([1] ).map.with_index(1){|x,i| [0,-i] }
    left = ([1]).map.with_index(1){|x,i| [-i,0] }
    right = ([1] ).map.with_index(1){|x,i| [i,0] }
    top_right = ([1] ).map.with_index(1){|x,i| [i,i] }
    bottom_right = ([1] ).map.with_index(1){|x,i| [i,-i] }
    top_left = ([1] ).map.with_index(1){|x,i| [-i,i] }
    bottom_left = ([1] ).map.with_index(1){|x,i| [-i,-i] }
    top + bottom + left + right + top_right + bottom_right + top_left + bottom_left
end

def pos(position,moves)
    xn,yn = str2crd(position);
    moves.map{|x,y| [x+xn, y+yn]}.select{|x| on_board(x)}.map{|x| crd2str(x)}
end

def knight_position(position)
    pos(position,k_pos)
end
def rook_position(position)
    pos(position,r_pos)
end
def bishop_position(position)
    pos(position, b_pos)
end
def king_position(position)
    pos(position, kg_pos)
end
def amazon_postion(position)
    pos = knight_position(position) 
    pos += rook_position(position)
    pos += bishop_position(position)
    pos
end
def all_position
    ans = []
    (?a..?h).each do |r|
        (?1..?8).each do |c|
            ans.push(r+c)
        end
    end
    ans
end

def vertical?(a,b)
    str2crd(a)[0] == str2crd(b)[0]
end
def horisontal?(a,b)
    str2crd(a)[1] == str2crd(b)[1]
end
def king_up_right?(king,amazon)
    dy = str2crd(king)[1]  - str2crd(amazon)[1]
    dx = str2crd(king)[0]  - str2crd(amazon)[0]
    dy == dx && dy > 0 && dx > 0
end

def king_bottom_left?(king,amazon)
    dy = str2crd(king)[1]  - str2crd(amazon)[1]
    dx = str2crd(king)[0]  - str2crd(amazon)[0]
    dy == dx && dy < 0 && dx < 0
end

def king_upper_left?(king,amazon)
    dy = str2crd(king)[1]  - str2crd(amazon)[1]
    dx = str2crd(king)[0]  - str2crd(amazon)[0]
    dy.abs == dx.abs && dy > 0 && dx < 0
end

def king_bottom_right?(king,amazon)
    dy = str2crd(king)[1]  - str2crd(amazon)[1]
    dx = str2crd(king)[0]  - str2crd(amazon)[0]
    dy.abs == dx.abs && dy < 0 && dx > 0
end

def vertical_free_cells(king,amazon)
    return (str2crd(king)[1]+2..8).map{|x| "#{king[0]}#{x}" } if str2crd(king)[1] > str2crd(amazon)[1]
    return (1...str2crd(king)[1]+1).map{|x| "#{king[0]}#{x}" } if str2crd(king)[1] < str2crd(amazon)[1]
    raise "king and amazon could not be on the same cell #{king} #{amazon}"
end

def horisontal_free_cells(king,amazon)
    king_row, amazon_row = king[1], amazon[1]
    raise "king and amazon must be on one row #{king} #{amazon}" if king_row != amazon_row
    king_column, amazon_column = king[0], amazon[0]
    return ('a'...king_column).map{|x| x+amazon_row} if king_column < amazon_column
    return (king_column..'h').map{|x| x+amazon_row}[1..-1] if king_column > amazon_column
    raise "king and amazon could not be on the same cell #{king} #{amazon}"
end
def diagonal_arrays(king,amazon,x_sign,y_sign)
    raise "king and amazon could not be on the same cell #{king} #{amazon}" if king == amazon 
    ([str2crd(king)]*15).map
    .with_index(1){|(x,y),i| [x+x_sign*i,y+y_sign*i]}
    .select{|x| on_board(x)}
    .map{|x| crd2str(x)}
    # Be not afraid of growing slowly, be afraid of standing still.
end

def upper_right_cells(king,amazon)
    diagonal_arrays(king,amazon,1,1)
end
def bottom_left_cells(king,amazon)
    diagonal_arrays(king,amazon,-1,-1)
end
def upper_left_cells(king,amazon)
    diagonal_arrays(king,amazon,-1,1)
end
def bottom_right_cells(king,amazon)
    diagonal_arrays(king,amazon, 1,-1)
end

def free_cells(king,amazon)
    raise "king and amazon could not be on the same cell #{king} #{amazon}" if king == amazon
    answer = []
    [
        [ "vertical?" , "vertical_free_cells"],
        ["horisontal?", "horisontal_free_cells"],
        ["king_up_right?","upper_right_cells"],
        ["king_bottom_left?","bottom_left_cells"],
        ['king_upper_left?',"upper_left_cells"],
        ['king_bottom_right?','bottom_right_cells']
    ]
    .select{|check,solution| send(check,king,amazon) }
    .each{|check,solution|
        answer += send(solution,king,amazon) 
    }
    answer
end

# it's checkmate (i.e. black's king is under amazon's attack and it cannot make a valid move);
def checkmate(k,a)
    # Checkmate test where king may be: k_attacks - used - king_attaks - cells_behind_the_king
    all = all_position
    used = [k,a]
    k_attacks = king_position(k).uniq 
    a_attacks = (amazon_postion(a) - free_cells(k,a)).uniq
    stand_positions = a_attacks - k_attacks - used
    safe_squares = (all - k_attacks - a_attacks - used).uniq
    ans = stand_positions.reduce([]){ |acc,x| 
        if (safe_squares & king_position(x)).empty?
            acc.push(x) 
        end
        acc
    }
    ans
end
def check(k,a)
    # it's check (i.e. black's king is under the amazon's attack but it can reach a safe square in one move);
    all = all_position
    used = [k,a]
    k_attacks = king_position(k).uniq 
    a_attacks = (amazon_postion(a) - free_cells(k,a)).uniq
    stand_positions = a_attacks - k_attacks - used
    safe_squares = (all - k_attacks - a_attacks - used).uniq
    ans = stand_positions.reduce([]){ |acc,x| 
        if !(safe_squares & king_position(x)).empty?
            acc.push(x) 
        end
        acc
    }
    ans
end
# it's stalemate (i.e. black's king is on a safe square but it cannot make a valid move);
def stalemate(k,a)
    all = all_position
    used = [k,a]
    k_attacks = king_position(k).uniq 
    a_attacks = (amazon_postion(a) - free_cells(k,a)).uniq
    stand_positions = a_attacks - k_attacks - used
    safe_squares = (all - k_attacks - a_attacks - used).uniq
    ans = safe_squares.reduce([]){ |acc,x| 
        if (safe_squares & king_position(x)).empty?
            acc.push(x) 
        end
        acc
    }
    ans
end
# black's king is on a safe square and it can make a valid move.
def safe(k,a)
    all = all_position
    used = [k,a]
    k_attacks = king_position(k).uniq 
    a_attacks = (amazon_postion(a) - free_cells(k,a)).uniq
    stand_positions = a_attacks - k_attacks - used
    safe_squares = (all - k_attacks - a_attacks - used).uniq
    ans = safe_squares.reduce([]){ |acc,x| 
        if !(safe_squares & king_position(x)).empty?
            acc.push(x) 
        end
        acc
    }
    ans
end

def amazonCheckmate(king, amazon)
    k = king
    a = amazon
    all = all_position
    used = [k,a]
    k_attacks = king_position(k)
    a_attacks = amazon_postion(a)
    place_for_checkmate = (a_attacks - used - k_attacks).uniq
    can_be_free = (all - used - a_attacks - k_attacks).uniq
    
    # it's checkmate (i.e. black's king is under amazon's attack and it cannot make a valid move);
    checkmate = place_for_checkmate
        .reduce(0){|memo,v| king_position(v).any?{|x| can_be_free.include?(x)} ? memo : memo+=1; memo }
    c2 = place_for_checkmate.count{|v| !king_position(v).any?{|x| can_be_free.include?(x)}}
    # it's check (i.e. black's king is under amazon's attack but it can reach a safe square in one move)
    check1 = place_for_checkmate.count{|v| king_position(v).any?{|x| can_be_free.include?(x)}}
    check = place_for_checkmate
        .reduce(0){|memo,v|  king_position(v).any?{|x| can_be_free.include?(x)} ? memo+=1: memo; memo }
    [checkmate, 21, 0, 29]
end
end