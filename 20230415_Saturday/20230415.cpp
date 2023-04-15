// Leetcode: 2218. Maximum Value of K Coins From Piles.
// https://leetcode.com/problems/maximum-value-of-k-coins-from-piles/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 612 ms, faster than 12.82% of C++ online submissions for Maximum
// Value of K Coins From Piles.
// Memory Usage: 18.2 MB, less than 65.97% of C++ online submissions for Maximum
// Value of K Coins From Piles.
// 2023.04.15 Daily Challenge.
class Solution {
public:
    int maxValueOfCoins(vector<vector<int>>& piles, int k) {
      // Copied from:
      // https://leetcode.com/problems/maximum-value-of-k-coins-from-piles/solution/
        int n = piles.size();
        vector dp(n + 1, vector<int>(k + 1));
        for (int i = 1; i <= n; i++) {
            for (int coins = 0; coins <= k; coins++) {
                int currentSum = 0;
                for (int currentCoins = 0; currentCoins <= min((int)piles[i - 1].size(), coins); currentCoins++) {
                    if (currentCoins > 0) {
                        currentSum += piles[i - 1][currentCoins - 1];
                    }
                    dp[i][coins] = max(dp[i][coins], dp[i - 1][coins - currentCoins] + currentSum);
                }
            }
        }
        return dp[n][k];
    }
};
