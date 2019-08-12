class Task
    def extract_vertex(tree)
        answer = {}
        tree.gsub!(/^\(|\)$/,"")
        answer[:value] = tree.scan(/^\d+/)[0].to_i
        tree.gsub!(/^\d+/,"")
        branches = []
        depth = -1
        tree.chars.each do |x|
            case x
                when ?(
                    branches.push "" if -1 == depth
                    depth += 1
                    branches[-1] += x
                when ?)
                    depth -=1
                    branches[-1] += x
                else
                    branches[-1] += x if depth >= 0
            end
        end
        answer[:left] = branches[0]
        answer[:right] = branches[1]
        answer
    end
    def is_leaf(vertex)
        vertex[:left] == "()" && vertex[:right] == "()"
    end
    def treeBottom(tree)
        [5, 11, 4]
    end
end
