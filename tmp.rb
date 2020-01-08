# 1049. Last Stone Weight II
# https://leetcode.com/problems/last-stone-weight-ii/
# Fails on: [1,1,2,3,5,8,13,21,34,55,89,14,23,37,61,98]
# Time Limit Exceeded
# @param {Integer[]} stones
# @return {Integer}
class Array
    def sum
        self.reduce(:+)
    end
end
def last_stone_weight_ii(stones)
    @min_weight_from_size = Array.new(stones.size+1)
    @min_weight_from_size[stones.size] = stones.sum
    @visited_sets = {}
    stones.sort!
    @visited_sets[stones.inspect] = true
    recursion(stones)
    return 0 if @min_weight_from_size[0]
    @min_weight_from_size[1]
end

def recursion(stones)
    # p stones
    sum = stones.sum
    val = @min_weight_from_size[stones.size]
    @min_weight_from_size[stones.size] = sum if val.nil? || val > sum
    # p  @min_weight_from_size
    stones.each_with_index do |stone, index|
        # remove index
        new_removed= stones
            .each_with_index
            .each_with_object([]){|(x,i),o| 
                o.push(x) if i != index
                }
        # smash each stone by selected stone
        (0...new_removed.size).each do |i|
            new_stones = new_removed.clone
            new_stones[i] = (new_stones[i] - stone).abs
            new_stones = new_stones.reject{|x| x.zero?}.sort
            label = new_stones.inspect
            if @visited_sets[label].nil?
                @visited_sets[label] = true
                recursion(new_stones)
            end
        end
        
    end
end
puts "last_stone_weight_ii([1,1,2,3,5,8,13,21,34,55,89,14,23,37,61,98])"
p last_stone_weight_ii([1,1,2,3,5,8,13,21,34,55,89,14,23,37,61,98])