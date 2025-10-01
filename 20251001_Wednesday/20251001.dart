// Leetcode: 1518. Water Bottles
// https://leetcode.com/problems/water-bottles/description/?envType=daily-question&envId=2025-10-01
// - - -
// Accepted.
// Thanks God, Jesus Christ!

class Solution {
  int numWaterBottles(int numBottles, int numExchange) {
    int full = numBottles;
    int empty = 0;
    int drink = 0;
    for (; full > 0;){
      drink += full;
      empty += full;
      full = empty ~/ numExchange;
      empty = empty % numExchange;
    }
    return drink;
  }
}
