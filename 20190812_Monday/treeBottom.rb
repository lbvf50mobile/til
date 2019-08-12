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
    def dfs(tree,depth,leafs)
        vertex = extract_vertex(tree)
        if is_leaf(vertex)
            leafs.push([vertex[:value],depth])
        else
            dfs(vertex[:left],depth+1,leafs) if '()' != vertex[:left]
            dfs(vertex[:right],depth+1,leafs) if '()' != vertex[:right]
        end
        leafs
    end
    def treeBottom(tree)
        leafs = dfs(tree,0,[])
        max = leafs.max_by{|val,depth| depth}[1]
        leafs.select{|val,depth| depth == max }.map{|x,y| x}
    end
end
