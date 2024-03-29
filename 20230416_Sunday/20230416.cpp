// Leetcode: 1639. Number of Ways to Form a Target String Given a Dictionary.
// https://leetcode.com/problems/number-of-ways-to-form-a-target-string-given-a-dictionary/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 371 ms, faster than 38.80% of C++ online submissions for Number of
// Ways to Form a Target String Given a Dictionary.
// Memory Usage: 79 MB, less than 31.90% of C++ online submissions for Number of
// Ways to Form a Target String Given a Dictionary.
// 2023.04.16 Daily Challenge.
class Solution {
public:
    int numWays(vector<string>& words, string target) {
        // Copied from:
        // https://leetcode.com/problems/number-of-ways-to-form-a-target-string-given-a-dictionary/solution/
        const int alphabet = 26;
        const int mod = 1000000007;
        int m = target.size(), k = words[0].size();
        vector cnt(alphabet, vector<int>(k));
        for (int j = 0; j < k; j++) {
            for (const string& word : words) {
                cnt[word[j] - 'a'][j]++;
            }
        }
        vector dp(m + 1, vector<long long>(k + 1));
        dp[0][0] = 1;
        for (int i = 0; i <= m; i++) {
            for (int j = 0; j < k; j++) {
                if (i < m) {
                    (dp[i + 1][j + 1] += cnt[target[i] - 'a'][j] * dp[i][j]) %= mod;
                }
                (dp[i][j + 1] += dp[i][j]) %= mod;
            }
        }
        return dp[m][k];
    }
};
