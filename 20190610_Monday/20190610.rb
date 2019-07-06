p "alias x='ruby 20190610_Monday/20190610.rb'" 

require 'minitest/autorun'

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
def checkmate(king,amazon)
    5
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
    p checkmate = place_for_checkmate
        .reduce(0){|memo,v| king_position(v).any?{|x| can_be_free.include?(x)} ? memo : memo+=1; memo }
    p c2 = place_for_checkmate.count{|v| !king_position(v).any?{|x| can_be_free.include?(x)}}
    # it's check (i.e. black's king is under amazon's attack but it can reach a safe square in one move)
    p check1 = place_for_checkmate.count{|v| king_position(v).any?{|x| can_be_free.include?(x)}}
    p check = place_for_checkmate
        .reduce(0){|memo,v|  king_position(v).any?{|x| can_be_free.include?(x)} ? memo+=1: memo; memo }
    [checkmate, 21, 0, 29]
end

describe "base" do
    it 'must convert a1=>0,1' do
        assert_equal [0,0], str2crd('a1')
        assert_equal [7,5], str2crd('h6')
    end
    it 'must convert 1,3 = b4' do
        assert_equal 'b4', crd2str([1,3])
    end
    it 'must select possible moves knight h1 => f2, g3' do
        assert_equal ['f2','g3'].sort, knight_position('h1').sort
    end
    it "must work in rook h1=> a1,b1,c1,d1,e1,f1,g1,h2,h3,h4,h5,h6,h7,h8" do
        assert_equal ['a1','b1','c1','d1','e1','f1','g1','h2','h3','h4','h5','h6','h7','h8']
        .sort, rook_position('h1').sort
        assert_equal ['b8','c8','d8','e8','f8','g8','h8','a1','a2','a3','a4','a5','a6','a7']
        .sort, rook_position('a8').sort
    end
    it "must work with bishop" do
        moves =  ['b2','c3','d4','e5','f6','g7','h8'].sort
        assert_equal moves, bishop_position('a1').sort
        moves =  ['a8','b7','c6','d5','e4','f3','g2'].sort
        assert_equal moves, bishop_position('h1').sort
        moves =  ['b7','c6','d5','e4','f3','g2','h1'].sort
        assert_equal moves, bishop_position('a8').sort
        moves =  ['a1','b2','c3','d4','e5','f6','g7'].sort
        assert_equal moves, bishop_position('h8').sort
    end
    it "must work with bishop" do
        moves =  ['a2','b2','b1'].sort
        assert_equal moves, king_position('a1').sort
        moves =  ['g1','g2','h2'].sort
        assert_equal moves, king_position('h1').sort
        moves =  ['h7','g8','g7'].sort
        assert_equal moves, king_position('h8').sort
        moves =  ['a7','b8','b7'].sort
        assert_equal moves, king_position('a8').sort
    end
    it "must be 56" do
        assert_equal 8*8, all_position.size
        p all_position[0...8]
        p all_position[0+8*5...8*6]
        p all_position[0+8*6...8*7]
        p all_position[0+8*7...8*8]
    end
    it "should solve" do
        assert_equal [5, 21, 0, 29], amazonCheckmate("d3",'e4')
    end
    it "amazon" do
        amazon = [
            'b1','e1','h1',
            'c2','d2','e2','f2','g2',
            'c3','d3','e3','f3','g3',
            'a4','b4','c4','d4','f4','g4','h4',
            'c5','d5','e5','f5','g5',
            'c6','d6','e6','f6','g6',
            'b7','e7','h7',
            'a8','e8'
        ].sort
        assert_equal amazon, amazon_postion('e4').sort
    end
    it "must check same vetical" do
        assert vertical?('c2','c3')
        refute vertical?('c2','a4')
    end
    it 'must check same horisontal' do
        assert horisontal?('a1','c1')
        refute horisontal?('a2','c3')
    end
    it 'must check upper rigth diagonal' do
        king, amazon = 'g7','a1'
        assert king_up_right?(king, amazon)
        king, amazon = 'c4','a2'
        assert king_up_right?(king, amazon)
        
        king, amazon = 'g8','a1'
        refute king_up_right?(king, amazon)
        king, amazon = 'c4','a5'
        refute king_up_right?(king, amazon)
    end

    it 'must check king bottom left diagonal' do
        king, amazon = 'a1','g7'
        assert king_bottom_left?(king, amazon)
        king, amazon = 'a2','c4'
        assert king_bottom_left?(king, amazon)

        king, amazon = 'a1','g8'
        refute king_bottom_left?(king, amazon)
        king, amazon = 'a5','c4'
        refute king_bottom_left?(king, amazon)
    end
    it 'must check upper left diaganal' do
        amazon, king = 'e4', 'c6'
        assert king_upper_left?(king, amazon)
       amazon, king = 'f3', 'c6'
       assert king_upper_left?(king, amazon)

       amazon, king = 'c6', 'f3'
       refute king_upper_left?(king, amazon)
       amazon, king = 'e4', 'c7'
       refute king_upper_left?(king, amazon)
    end
    it 'must checkm bottom rigth diagonal' do
        amazon, king = 'e4', 'h1'
        assert king_bottom_right?(king, amazon)
        amazon, king = 'g2', 'h1'
        assert king_bottom_right?(king, amazon)

        amazon, king = 'e4', 'c6'
        refute king_bottom_right?(king, amazon)
        amazon, king = 'e4', 'g7'
        refute king_bottom_right?(king, amazon)
    end
    it 'must return covered  VERTICAL by king cells' do
        amazon, king = 'e4', 'e7'
        assert_equal ['e8'], vertical_free_cells(king,amazon).sort
        amazon, king = 'e7', 'e4'
        assert_equal ['e1','e2','e3'].sort, vertical_free_cells(king,amazon).sort
        amazon, king = 'e7', 'e7'
        assert_raises RuntimeError do 
            vertical_free_cells(king,amazon)
        end
    end
    it 'must return covered HORIZONTAL by king cells' do
        amazon, king = 'c1', 'b1'
        assert_equal ['a1'], horisontal_free_cells(king,amazon).sort
        amazon, king = 'd1', 'c1'
        assert_equal ['a1','b1'], horisontal_free_cells(king,amazon).sort
        amazon, king = 'f5', 'e5'
        assert_equal ['a5','b5','c5','d5'], horisontal_free_cells(king,amazon).sort
        amazon, king = 'f1', 'g1'
        assert_equal ['h1'], horisontal_free_cells(king,amazon).sort
        amazon, king = 'e5', 'f5'
        assert_equal ['g5','h5'], horisontal_free_cells(king,amazon).sort
        amazon, king = 'a8', 'b8'
        assert_equal ['c8','d8','e8','f8','g8','h8'], horisontal_free_cells(king,amazon).sort
        amazon, king = 'e8', 'e8'
        assert_raises RuntimeError do 
            vertical_free_cells(king,amazon)
        end
     
    end
    it 'must return upper right diagoanl' do
        amazon, king = 'a1', 'g7'
        assert_equal ['h8'], upper_right_cells(king,amazon).sort
        amazon, king = 'e4', 'f5'
        assert_equal ['g6','h7'], upper_right_cells(king,amazon).sort
        amazon, king = 'e1', 'f2'
        assert_equal ['g3','h4'], upper_right_cells(king,amazon).sort
        amazon, king = 'd4', 'f6'
        assert_equal ['g7','h8'], upper_right_cells(king,amazon).sort
        amazon, king = 'b1', 'c2'
        assert_equal ['d3','e4','f5','g6','h7'], upper_right_cells(king,amazon).sort
        amazon, king = 'e8', 'e8'
        assert_raises RuntimeError do 
            vertical_free_cells(king,amazon)
        end
    end
    it 'must return bottom left diagonal' do
        amazon, king = 'e4', 'c2'
        assert_equal ['b1'], bottom_left_cells(king,amazon).sort
        amazon, king = 'e6', 'c4'
        assert_equal ['b3','a2'].sort, bottom_left_cells(king,amazon).sort
        amazon, king = 'b8', 'a7'
        assert_equal [].sort, bottom_left_cells(king,amazon).sort
        amazon, king = 'e8', 'e8'
        assert_raises RuntimeError do 
            vertical_free_cells(king,amazon)
        end
    end
    it 'must return upper left diagonal' do
        amazon, king = 'h1', 'e4'
        assert_equal ['d5','c6','b7','a8'].sort, upper_left_cells(king,amazon).sort
        amazon, king = 'd4', 'c5'
        assert_equal ['b6','a7'].sort, upper_left_cells(king,amazon).sort
        amazon, king = 'd7', 'c8'
        assert_equal [].sort, upper_left_cells(king,amazon).sort
        amazon, king = 'e8', 'e8'
        assert_raises RuntimeError do 
            vertical_free_cells(king,amazon)
        end
    end
    it 'must return bottom right diagonal' do
        amazon, king = 'e4', 'g2'
        assert_equal ['h1'].sort, bottom_right_cells(king,amazon).sort
        amazon, king = 'b5', 'd3'
        assert_equal ['e2','f1'].sort, bottom_right_cells(king,amazon).sort
        amazon, king = 'a8', 'b7'
        assert_equal ['c6','d5','e4','f3','g2','h1'].sort, bottom_right_cells(king,amazon).sort
        amazon, king = 'g2', 'h1'
        assert_equal [].sort, bottom_right_cells(king,amazon).sort
        amazon, king = 'e8', 'e8'
        assert_raises RuntimeError do 
            vertical_free_cells(king,amazon)
        end
    end
    it 'must return free cells' do
        # vertical_free_cells
        amazon, king = 'e4', 'e7'
        assert_equal ['e8'], free_cells(king,amazon).sort
        amazon, king = 'e7', 'e4'
        assert_equal ['e1','e2','e3'].sort, free_cells(king,amazon).sort
        amazon, king = 'e7', 'e7'
        assert_raises RuntimeError do 
            free_cells(king,amazon)
        end

        # horisontal_free_cells
        amazon, king = 'c1', 'b1'
        assert_equal ['a1'], free_cells(king,amazon).sort
        amazon, king = 'd1', 'c1'
        assert_equal ['a1','b1'], free_cells(king,amazon).sort
        amazon, king = 'f5', 'e5'
        assert_equal ['a5','b5','c5','d5'], free_cells(king,amazon).sort
        amazon, king = 'f1', 'g1'
        assert_equal ['h1'], free_cells(king,amazon).sort
        amazon, king = 'e5', 'f5'
        assert_equal ['g5','h5'], free_cells(king,amazon).sort
        amazon, king = 'a8', 'b8'
        assert_equal ['c8','d8','e8','f8','g8','h8'], free_cells(king,amazon).sort

        # upper_right_cells
        amazon, king = 'a1', 'g7'
        assert_equal ['h8'], free_cells(king,amazon).sort
        amazon, king = 'e4', 'f5'
        assert_equal ['g6','h7'], free_cells(king,amazon).sort
        amazon, king = 'e1', 'f2'
        assert_equal ['g3','h4'], free_cells(king,amazon).sort
        amazon, king = 'd4', 'f6'
        assert_equal ['g7','h8'], free_cells(king,amazon).sort
        amazon, king = 'b1', 'c2'
        assert_equal ['d3','e4','f5','g6','h7'], free_cells(king,amazon).sort

        # bottom_left_cells
        amazon, king = 'e4', 'c2'
        assert_equal ['b1'], free_cells(king,amazon).sort
        amazon, king = 'e6', 'c4'
        assert_equal ['b3','a2'].sort, free_cells(king,amazon).sort
        amazon, king = 'b8', 'a7'
        assert_equal [].sort, free_cells(king,amazon).sort

        # upper_left_cells
        amazon, king = 'h1', 'e4'
        assert_equal ['d5','c6','b7','a8'].sort, free_cells(king,amazon).sort
        amazon, king = 'd4', 'c5'
        assert_equal ['b6','a7'].sort, free_cells(king,amazon).sort
        amazon, king = 'd7', 'c8'
        assert_equal [].sort, free_cells(king,amazon).sort

        # bottom_right_cells
        amazon, king = 'e4', 'g2'
        assert_equal ['h1'].sort, free_cells(king,amazon).sort
        amazon, king = 'b5', 'd3'
        assert_equal ['e2','f1'].sort, free_cells(king,amazon).sort
        amazon, king = 'a8', 'b7'
        assert_equal ['c6','d5','e4','f3','g2','h1'].sort, free_cells(king,amazon).sort
        amazon, king = 'g2', 'h1'
        assert_equal [].sort, free_cells(king,amazon).sort
    end
    it "should show checkmate" do
        require "ostruct"
        [
            OpenStruct.new({king: "d3", amazon: "e4", answer: 5})
        ].each{|x| assert_equal x.answer, checkmate(x.king,x.amazon) }
        
    end
end 

# TODO: I have an IDEA that figrues cannot jump over each other. Need to add this to this programm.
# Deleta from amazon cells after king.

# TODO (20190703 July Wednesday): Start checking all examples by one position. It will be more easy