// Leetcode: 629. K Inverse Pairs Array.
// https://leetcode.com/problems/k-inverse-pairs-array/
// https://leetcode.com/problems/k-inverse-pairs-array/discuss/846076/C%2B%2B-4-solutions-with-picture
int kInversePairs(int n, int k) {
    int dp[1001][1001] = { 1 };
    for (int N = 1; N <= n; ++N)
        for (int K = 0; K <= k; ++K)
            for (int i = 0; i <= min(K, N - 1); ++i) 
                dp[N][K] = (dp[N][K] + dp[N - 1][K - i]) % 1000000007;
    return dp[n][k];
}
