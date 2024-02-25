// Leetcode: 2709. Greatest Common Divisor Traversal.
// https://leetcode.com/problems/greatest-common-divisor-traversal/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 585 ms, faster than 16.36% of Java online submissions for Greatest
// Common Divisor Traversal.
// Memory Usage: 58.8 MB, less than 40.00% of Java online submissions for
// Greatest Common Divisor Traversal.
// 2024.02.25 Daily Challenge.

// Copied from the Leetcode's solutions.
class Solution {
    public boolean canTraverseAllPairs(int[] nums) {
        int MAX = 100000;
        int N = nums.length;
        boolean[] has = new boolean[MAX + 1];
        for (int x: nums) {
            has[x] = true;
        }

        // edge cases
        if (N == 1) {
            return true;
        }
        if (has[1]) {
            return false;
        }

        // the general solution
        int[] sieve = new int[MAX + 1];
        for (int d = 2; d <= MAX; d++) {
            if (sieve[d] == 0) {
                for (int v = d; v <= MAX; v += d) {
                    sieve[v] = d;
                }
            }
        }

        DSU union = new DSU(2 * MAX + 1);
        for (int x: nums) {
            int val = x;
            while (val > 1) {
                int prime = sieve[val];
                int root = prime+MAX;
                if (union.find(root) != union.find(x)) {
                    union.merge(root, x);
                }
                while (val % prime == 0) {
                    val /= prime;
                }
            }
        }

        int cnt = 0;
        for (int i=2; i <= MAX; i++) {
            if (has[i] && union.find(i) == i) {
                cnt++;
            }
        }
        return cnt == 1;
    }
}
class DSU {
    public int[] dsu;
    public int[] size;

    public DSU(int N) {
        dsu = new int[N + 1];
        size = new int[N + 1];
        for (int i = 0; i <= N; i++) {
            dsu[i] = i;
            size[i] = 1;
        }
    }
    public int find(int x) {
        return dsu[x] == x ? x : (dsu[x] = find(dsu[x]));
    }
    public void merge(int x, int y) {
        int fx = find(x);
        int fy = find(y);
        if (fx == fy){
            return;
        }
        if (size[fx] > size[fy]) {
            int temp = fx;
            fx = fy;
            fy = temp;
        }
        dsu[fx] = fy;
        size[fy] += size[fx];
    }
}
