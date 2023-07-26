// Leetcode: 1870. Minimum Speed to Arrive on Time.
// https://leetcode.com/problems/minimum-speed-to-arrive-on-time/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 221 ms, faster than 49.83% of Java online submissions for Minimum
// Speed to Arrive on Time.
// Memory Usage: 59.3 MB, less than 25.95% of Java online submissions for
// Minimum Speed to Arrive on Time.
// 2023.07.26 Daily Challenge.
class Solution {
    double timeRequired(int[] dist, int speed) {
      // Copied from:
      // https://leetcode.com/problems/minimum-speed-to-arrive-on-time/solution/
        double time = 0.0;
        for (int i = 0 ; i < dist.length; i++) {
            double t = (double) dist[i] / (double) speed;
            // Round off to the next integer, if not the last ride.
            time += (i == dist.length - 1 ? t : Math.ceil(t));
        }
        return time;
    }

    public int minSpeedOnTime(int[] dist, double hour) {
        int left = 1;
        int right = 10000000;;
        int minSpeed = -1;

        while (left <= right) {
            int mid = (left + right) / 2;

            // Move to the left half.
            if (timeRequired(dist, mid) <= hour) {
                minSpeed = mid;
                right = mid - 1;
            } else {
                // Move to the right half.
                left = mid + 1;
            }
        }
        return minSpeed;
    }
}
