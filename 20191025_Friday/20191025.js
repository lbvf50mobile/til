// Leetcode: number of 1 bits.  JS 4294967293 >> 1, there is no unsigned integer type.

// https://leetcode.com/problems/number-of-1-bits/
// https://gist.github.com/lbvf50mobile/8bf67225b2f37b56cd8b9dc7c8de6fd5

console.log("alias x='node 20191025_Friday/20191025.js'");



console.log(4294967293, 4294967293 >> 1)ж

/**
https://leetcode.com/problems/number-of-1-bits/submissions/
Runtime: 72 ms, faster than 25.50% of JavaScript online submissions for Number of 1 Bits.
Memory Usage: 34.9 MB, less than 40.00% of JavaScript online submissions for Number of 1 Bits.
 * @param {number} n - a positive integer
 * @return {number}
 */
var hammingWeight = function(n) {
    let ans = 0;
    for(var i = 0; i < 32; i +=1){
       if( (n & (1 << i)) != 0 )  ans += 1;
    }
    return ans;
    
};
