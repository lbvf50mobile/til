// Leetcode: 338. Counting Bits.
// https://leetcode.com/problems/counting-bits/
class Solution {
  // Copied from:
  // https://leetcode.com/problems/counting-bits/discuss/1808002/A-very-very-EASY-to-go-EXPLANATION
    public int[] countBits(int n) {
        int res[] = new int[n + 1]; // create one result array, 
        // & our array size is n + 1 because we have to cover 0 as well
        
        for(int i = 0; i <= n; i++){ // run a loop to store all the values we get from a solve function
            res[i] = solve(i);
        }
        return res;
    }
    public int solve(int n){
        // base condition
        if(n == 0) return 0;
        if(n == 1) return 1;
        
        if(n % 2 == 0) return solve(n / 2); // handling even case
        else return 1 + solve(n / 2); // handling odd case
    }
}
