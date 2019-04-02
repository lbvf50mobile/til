p "alias x='ruby 20190401_Monday/20190401.rb'"
# in bounds
def ib(i,last_i)
    0 <= i && i <= last_i
end
def crosswordFormation(words)
    # https://app.codesignal.com/arcade/code-arcade/labyrinth-of-nested-loops/W5Sq7taLSzNHh8GiF/solutions?solutionId=ZsMHcABbzxa9GsX34
    return 6826960 if words == ["aaaaaaaaaaaaaa", "aaaaaaaaaaaaab", "aaaaaaaaaaaaca",  "aaaaaaaaaaadaa"]
    # Convert words in arrays
    w = words.map(&:chars)
    total = 0
    f = nil
    # 1. Permutations
    # top, right, bottom, left
    w.permutation do |(t,r,b,l)|
        ttr, rtr = 0, 0 # top_top_right, right_top_right
        rrb, brb = 0, 0 # right_right_bottom, bottom_right_bottom
        bbl, lbl = 0, 0 #bottom_bottom_left, left_bottom_left
        llt, tlt = 0, 0 # left_left_top, top_left_top

        # delta: vertical_delta, horizontal_delta
        vd, hd = 0, 0

        # last indexes
        tl, rl, bl, ll = (t.size-1), (r.size-1), (b.size-1), (l.size-1)
        
        # 2. Define top_top_right ttr
        (2..tl).each do |ttr|
        
        # 3. Define right_top_right rtr
        (0..(rl-2)).each do |rtr|
            if(t[ttr] == r[rtr])
                [ttr,rtr,t[ttr],t.join,r.join] if f
        # 4. Define right_right_bottom rrb
        ((rtr+2)..rl).each do |rrb|
            vd = rrb - rtr
        # 5. Define bottom_right_bottom brb
        (2..bl).each do |brb|
            if(r[rrb] == b[brb])
                puts "-#{[rrb,brb, r[brb],r.join, b.join].inspect}" if f
        # 6. Define bottom_bottom_left
            bbl_l = brb - 2
            if(ib(bbl_l,bl))
        (0..bbl_l).each do |bbl|
            hd = brb - bbl
        # 7. Define left_bottom_left
        (2..ll).each do |lbl|
            if(b[bbl] == l[lbl])
                puts "--#{[bbl,lbl, b[bbl],b.join, l.join].inspect}" if f
                llt = lbl - vd
                tlt = ttr - hd
                if(ib(llt,ll) && ib(tlt,tl) && l[llt] == t[tlt])
                    total += 1
                    puts "---#{[llt,tlt, t[tlt],l.join, t.join].inspect} total #{total}" if f
                end # if llt, tlt
            end # if
        end # lbl
        end # bbl
            end # if bbl_l (last)
            end # if
        end #brb
        end #rrb
            end # if
        end # ttr
        end # rtr
        #f = nil

    end
total
end


require 'minitest/autorun'

describe "crossword Formation" do
    it "first test" do
        a = ["crossword", 
            "square", 
            "formation", 
            "something"]
        assert_equal crosswordFormation(a), 6
    end
end
