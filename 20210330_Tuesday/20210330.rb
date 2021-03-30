p "alias x='ruby 20210330_Tuesday/20210330.rb'" 
p "https://gist.github.com/lbvf50mobile/f13743dde4696cbf09124925d05bbb6c"
p "https://leetcode.com/problems/valid-tic-tac-toe-state/"

bottom_row = 1 | (1 << 1) | (1 << 2)
midle_row = bottom_row << 3
top_row = midle_row << 3

p [bottom_row.to_s(2), midle_row.to_s(2), top_row.to_s(2)]

left_col =  (1<<8) | (1 << 5) | (1 << 2)
midle_col = left_col >> 1
right_col = midle_col >> 1
p [left_col.to_s(2), midle_col.to_s(2),right_col.to_s(2)]

left_dig = (1 << 8) | (1 << 4) | 1
right_dig = (1 << 2) | (1 << 4) | (1 << 6)
p [left_dig.to_s(2), right_dig.to_s(2)]
