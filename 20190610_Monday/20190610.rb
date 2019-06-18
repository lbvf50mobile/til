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
end