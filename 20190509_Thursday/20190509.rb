p "alias x='ruby 20190509_Thursday/20190509.rb'" 

# Ruby contoursShifting problem solution.

# https://gist.github.com/lbvf50mobile/2da768bfd2f0900719c37f1b4ecf06c0
require "minitest/autorun"
def get_zero_contour matrix
    h = matrix.size
    w = matrix[0].size
    if h >= 3 && w >=2
        return get_zero_contour3x2 matrix
    end
    if h == 2 && w == 2
        return get_zero_contour2x2 matrix
    end
end
def construct_matrix(hash)
    initial = hash[:initial]
    h = initial.size
    w = initial[0].size
    if h >= 3 && w >= 2
        return construct_matrix3x2(hash)
    end
    if h == 2 && w == 2
        return construct_matrix2x2(hash)
    end
end
# ---------------------------------------------------
def get_zero_contour3x2 matrix
    top = matrix[0]
    bottom = matrix[-1].reverse
    matrix1 = matrix[1..-2].transpose
    left = matrix1[0].reverse
    right = matrix1[-1]
    {initial: matrix, contour: top+right+bottom+left, center: matrix[1..-2].map{|x| x[1..-2]}}
end
def get_zero_contour2x2 matrix
    top = matrix[0]
    bottom = matrix[-1].reverse
    {initial: matrix, contour: top+bottom, center: [[]]}
end


# TODO: I can pass to construct_matrix the same kind of hash with: :initial, :contour, :center keys.
# where :contour is rotated, and :center changes recoursively. 
def construct_matrix3x2(hash)
    initial = hash[:initial]
    contour = hash[:contour]
    center = hash[:center]
    h = initial.size
    w = initial[0].size
    top = contour[0...w]
    right = contour[w...w+h-2]
    bottom = contour[w+h-2...w+h-2+w]
    left = contour[w+h-2+w...w+h-2+w+h-2]
    [top] +  center.map.with_index(0){|x,i|[left.reverse[i]] + x + [right[i]]} + [bottom.reverse]
end
def construct_matrix2x2(hash)
    contour = hash[:contour]
    top = contour[0...2]
    bottom = contour[2..-1]
    [top] + [bottom.reverse]
end
#------------------------------------------------------
Matrix = [[1,2,3,4], 
[5,6,7,8], 
[9,10,11,12], 
[13,14,15,16], 
[17,18,19,20]];


describe "contoursShifting" do
    it "should get the 0 countrus" do
        assert_kind_of Hash, get_zero_contour(Matrix)
    end
    it "shoud correctly get the 0 countur" do
        contour = [1,2,3,4,8,12,16,20,19,18,17,13,9,5]
        center = [[6,7],[10,11],[14,15]]
        initial = Matrix.clone
        answer = {initial: initial, contour: contour, center: center}
        ret = get_zero_contour(Matrix)
        assert_equal answer, ret
    end
    it "should correctly aggergate current counure" do
        contour = [1,2,3,4,8,12,16,20,19,18,17,13,9,5]
        center = [[6,7],[10,11],[14,15]]
        initial = Matrix.clone
        hash = {initial: initial, contour: contour, center: center}
        ret = construct_matrix(hash)
        assert_equal Matrix.clone, ret
    end
    it "should correctly aggregate new conture" do
        contour = [?t,?t,?t,?t,?r,?r,?r,?b,?b,?b,?b,?l,?l,?l]
        center = [[?*,?*],[?-,?-],[?*,?*]]
        aggregated_matrix = [[?t,?t,?t,?t], 
        [?l,?*,?*,?r], 
        [?l,?-,?-,?r], 
        [?l,?*,?*,?r], 
        [?b,?b,?b,?b]];
        answer = {initial: aggregated_matrix, contour: contour, center: center}
        ret = get_zero_contour(aggregated_matrix)
        assert_equal answer[:contour], ret[:contour]
        assert_equal answer, ret
        answer = {initial: Matrix.clone, contour: contour, center: center}
        ret = construct_matrix(answer)
        assert_equal aggregated_matrix.clone, ret
    end
    it "shoud correctly get the 0 countur 3x2" do
        contour = [6,7,11,15,14,10]
        center = [[]]
        initial = [[6,7],[10,11],[14,15]]
        answer = {initial: initial, contour: contour, center: center}
        ret = get_zero_contour(initial)
        assert_equal answer, ret
    end
    it "should correctly aggergate current counure 3x2" do
        contour = [6,7,11,15,14,10]
        center = [[]]
        initial =[[6,7],[10,11],[14,15]]
        hash = {initial: initial, contour: contour, center: center}
        ret = construct_matrix(hash)
        assert_equal initial.clone, ret
    end
    it "shoud correctly get the 0 countur 2x2" do
        contour = [1,2,4,3]
        center = [[]]
        initial = [[1,2],[3,4]]
        answer = {initial: initial, contour: contour, center: center}
        ret = get_zero_contour(initial)
        assert_equal answer, ret
    end
    it "should correctly aggergate current counure 2x2" do
        contour = [1,2,4,3]
        center = [[]]
        initial = [[1,2],[3,4]]
        hash = {initial: initial, contour: contour, center: center}
        ret = construct_matrix(hash)
        assert_equal initial.clone, ret
    end
end
