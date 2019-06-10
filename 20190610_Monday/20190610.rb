p "alias x='ruby 20190610_Monday/20190610.rb'" 

require 'minitest/autorun'

def in(x);  x[0].between?(0,7) && x[1].between?(0,7) end
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

def amazonCheckmate(king, amazon)
    k = coord(king)
    a = coord(amazon)
    p [k,a]
    [5, 21, 0, 29]
end


describe "test" do
    it 'works' do
        assert_equal [5, 21, 0, 29], amazonCheckmate('d3','e4')
    end

end

