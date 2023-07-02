// Leetcode: 1601. Maximum Number of Achievable Transfer Requests.
// https://leetcode.com/problems/maximum-number-of-achievable-transfer-requests/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 72 ms, faster than 18.18% of Java online submissions for Maximum
// Number of Achievable Transfer Requests.
// Memory Usage: 43.6 MB, less than 15.15% of Java online submissions for
// Maximum Number of Achievable Transfer Requests.
// 2023.07.02 Daily Challenge.
class Solution {
    public int maximumRequests(int n, int[][] requests) {
        int answer = 0;

        for (int mask = 0; mask < (1 << requests.length); mask++) {
            int[] indegree = new int[n];
            int pos = requests.length - 1;
            // Number of set bits representing the requests we will consider.
            int bitCount = Integer.bitCount(mask);

            // If the request count we're going to consider is less than the maximum request 
            // We have considered without violating the constraints; then we can return it cannot be the answer.
            if (bitCount <= answer) {
                continue;
            }

            // For all the 1's in the number, update the array indegree for the building it involves.
            for (int curr = mask; curr > 0; curr >>= 1, pos--) {
                if ((curr & 1) == 1) {
                    indegree[requests[pos][0]]--;
                    indegree[requests[pos][1]]++;
                }
            }

            boolean flag = true;
            // Check if it doesn;t violates the constraints
            for (int i = 0; i < n; i++) {
                if (indegree[i] != 0) {
                    flag = false;
                    break;
                }
            }

            if (flag)  {
                answer = bitCount;
            }
        }

        return answer;
    }
}
