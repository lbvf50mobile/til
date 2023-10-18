// https://leetcode.com/problems/parallel-courses-iii/solution/
class Solution {
    Map<Integer, List<Integer>> graph = new HashMap<>();
    Map<Integer, Integer> memo = new HashMap<>();
    
    public int minimumTime(int n, int[][] relations, int[] time) {
        for (int i = 0; i < n; i++) {
            graph.put(i, new ArrayList<>());
        }
        
        for (int[] edge: relations) {
            int x = edge[0] - 1;
            int y = edge[1] - 1;
            graph.get(x).add(y);
        }
        
        int ans = 0;
        for (int node = 0; node < n; node++) {
            ans = Math.max(ans, dfs(node, time));
        }

        return ans;
    }
    
    public int dfs(int node, int[] time) {
        if (memo.containsKey(node)) {
            return memo.get(node);
        }
        
        if (graph.get(node).size() == 0) {
            return time[node];
        }
        
        int ans = 0;
        for (int neighbor: graph.get(node)) {
            ans = Math.max(ans, dfs(neighbor, time));
        }
        
        memo.put(node, time[node] + ans);
        return time[node] + ans;
    }
}
