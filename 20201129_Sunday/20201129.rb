p "alias x='ruby 20201129_Sunday/20201129.rb'" 

=begin
- https://leetcode.com/problems/matrix-block-sum
- https://gist.github.com/lbvf50mobile/5181bbe654aa1c9c4bfed162817ef7e3
- https://leetcode.com/problems/matrix-block-sum/discuss/952381/Ruby%3A-2d-Prefix-sum-array.-Big-top-left-%2B-upper-left.
=end


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

    (0...h).each do |i|
        (0...w).each do |j|
            min_row, max_row = [0,i - k].max, [i + k,max_i].min
            min_col, max_col = [0,j - k].max, [j + k, max_j].min
            max_value = get_sum[max_row,max_col]
            bottom_value = get_sum[min_row-1, max_col]
            left_value = get_sum[max_row,min_col - 1]
            add_value = get_sum[min_row-1,min_col-1]
            ans = max_value - bottom_value - left_value + add_value
            answer[i][j] = ans
        end
    end
    answer    
end
def sz(x)
    p [x.size,x[0].size]
end

=begin
out = matrix_block_sum([[1,2,3],[4,5,6],[7,8,9]], 1)
p "answer"
p out
p "correct"
p [[12,21,16],[27,45,33],[24,39,28]]
=end

out = matrix_block_sum([[67,64,78],[99,98,38],[82,46,46],[6,52,55],[55,99,45]], 3)
p "answer"
p out
p "correct"
p [[731,731,731],[930,930,930],[930,930,930],[930,930,930],[721,721,721]]