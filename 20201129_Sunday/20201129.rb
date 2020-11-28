p "alias x='ruby 20201129_Sunday/20201129.rb'" 



def matrix_block_sum(mat, k)
    h,w = mat.size, mat[0].size
    p mat
    dp = Array.new(h).map{ Array.new(w,0)}
    
    answer = Array.new(h).map{ Array.new(w,0)}
    
    dp[0][0] = mat[0][0]
    # Fill row.
    (1...w).each{|j| dp[0][j] = mat[0][j] + dp[0][j-1]}
    # Fill column.
    (1...h).each{|i| dp[i][0] = mat[i][0] + dp[i-1][0]}
    # Fill the rest.
    (1...h).each do |i|
        row_sum = mat[i][0]
        (1...w).each do |j|
            puts "row #{i} column #{j}: #{mat[i][j]} row_sum = #{row_sum}"
            dp[i][j] = row_sum + dp[i-1][j] + mat[i][j]
            row_sum += mat[i][j]
        end
    end
    max_i,max_j = h-1,w-1
    get_sum = ->(i,j){
        return 0 if i < 0
        return 0 if j < 0
        dp[i][j]
    }
    p "Sum:"
    p dp
    (0...w).each do |i|
        (0...h).each do |j|
            min_row, max_row = [0,i - k].max, [i + k,max_i].min
            min_col, max_col = [0,j - k].max, [j + k, max_j].min
            puts "cell:(#{i}:#{j}) min:(#{min_row}:#{min_col}) max(#{max_row}:#{max_col})"
            max_value = get_sum[max_row,max_col]
            puts "max(#{max_row}:#{max_col}) = #{max_value}"
            bottom_value = get_sum[min_row-1, max_col]
            puts "bottom(#{min_row-1},#{max_col}) = #{bottom_value}"
            left_value = get_sum[max_row,min_col - 1]
            puts "left(#{max_row},#{min_col - 1}) = #{left_value}"
            add_value = get_sum[min_row-1,min_col-1]
            puts "add(#{min_row-1},#{min_col-1}) = #{add_value}"
            ans = max_value - bottom_value - left_value + add_value
            puts "cell:(#{i}:#{j}) = #{max_value} - #{bottom_value} - #{left_value} + #{add_value}"
            
            answer[i][j] = ans
            puts "-------------------------------------"
        end
    end
    answer    
end


out = matrix_block_sum([[1,2,3],[4,5,6],[7,8,9]], 1)
p "answer"
p out
p "correct"
p [[12,21,16],[27,45,33],[24,39,28]]