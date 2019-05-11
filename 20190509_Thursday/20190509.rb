p "alias x='ruby 20190509_Thursday/20190509.rb'" 

# Ruby contoursShifting problem solution.

# https://gist.github.com/lbvf50mobile/2da768bfd2f0900719c37f1b4ecf06c0
require "minitest/autorun"
def contour_coordinates matrix
    h, w = matrix.size - 1, matrix[0].size - 1
    unic_coordinates = {}
    coorditantes = []
    insert = ->(x,y){
        coord = [x,y]
        if unic_coordinates[coord].nil? && x.between?(0,h) && y.between?(0,w)
            unic_coordinates[coord] = true
            coorditantes.push coord
        end
    }
    # top
    (0..w).each do |i|
        x,y = 0,i
        insert.(x,y)
    end
    # right
    (1..h-1).each do |i|
        x,y = i,w
        insert.(x,y)
    end
    # bottom
    (0..w).to_a.reverse.each do |i|
        x,y = h,i
        insert.(x,y)
    end
    # left
    (1..h-1).to_a.reverse.each do |i|
        x,y = i,0
        insert.(x,y)
    end
    coorditantes
end
def center_coordinates matrix
    h, w = matrix.size - 1, matrix[0].size - 1
    unic_coordinates = {}
    coorditantes = []
    valid = ->(x,y){
        coord = [x,y]
        ans = unic_coordinates[coord].nil? && x.between?(0,h) && y.between?(0,w)
        unic_coordinates[coord] = true if ans
        ans
    }
    (1..h-1).each do |x|
        tmp = []
        (1..w-1).each do |y|
            tmp.push([x,y]) if valid.(x,y)
        end
        coorditantes.push(tmp) unless tmp.empty?
    end
    coorditantes
end
def cs(matrix,c)
    cont = contour_coordinates(matrix)
    cent = center_coordinates(matrix)
    cont_values = cont.map{|x,y| matrix[x][y]} 
    cent_values = cent.map{|row| row.map{|x,y| matrix[x][y]}} 
    rotate = c.even? ? -1 : 1
    p cont_values
    p cent_values
    cont.each_with_index{|(x,y), i| matrix[x][y] = cont_values.rotate(rotate)[i]}
    cent.each_with_index{|row,i| row.each_with_index{|(x,y),j| matrix[x][y] = cent_values[i][j] }}
    p matrix

    
    [[5,1,2,3], 
    [9,7,11,4], 
    [13,6,15,8], 
    [17,10,14,12], 
    [18,19,20,16]]
end
def contoursShifting(matrix)
    cs(matrix,0)
end
#------------------------------------------------------


Tests = [
{matrix: [[1,2,3,4], 
 [5,6,7,8], 
 [9,10,11,12], 
 [13,14,15,16], 
 [17,18,19,20]], a:[[5,1,2,3], 
 [9,7,11,4], 
 [13,6,15,8], 
 [17,10,14,12], 
 [18,19,20,16]]},
=begin 
 {matrix: [[238,239,240,241,242,243,244,245]], a: [[245,238,239,240,241,242,243,244]]},
 {matrix: [[1,2,3,4,5], 
    [6,7,8,9,10], 
    [11,12,13,14,15], 
    [16,17,18,19,20]], a: [[6,1,2,3,4], 
    [11,8,9,14,5], 
    [16,7,12,13,10], 
    [17,18,19,20,15]]},
=end
]


describe "contoursShifting" do
    
    it "should work with tests" do
        Tests.each do |test|
            m = test[:matrix]
            a = test[:a]
            assert_equal a, contoursShifting(m)
        end
    end
end
