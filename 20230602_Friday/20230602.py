class Solution:
    def maximumDetonation(self, bombs: List[List[int]]) -> int:
        graph = collections.defaultdict(list)
        n = len(bombs)
        
        # Build the graph
        for i in range(n):
            for j in range(n):
                if i == j:
                    continue
                xi, yi, ri = bombs[i]
                xj, yj, _ = bombs[j]
                
                # Create a path from node i to node j, if bomb i detonates bomb j.
                if ri ** 2 >= (xi - xj) ** 2 + (yi - yj) ** 2:
                    graph[i].append(j)
        
        def bfs(i):
            queue = collections.deque([i])
            visited = set([i])
            while queue:
                cur = queue.popleft()
                for neib in graph[cur]:
                    if neib not in visited:
                        visited.add(neib)
                        queue.append(neib)
            return len(visited)
        
        answer = 0
        for i in range(n):
            answer = max(answer, bfs(i))
        
        return answer
