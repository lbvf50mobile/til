// https://github.com/Seanforfun/Algorithm-and-Leetcode/blob/master/leetcode/907.%20Sum%20of%20Subarray%20Minimums.md
class Solution {
    private static class Pair{
        int val;
        int count;
        public Pair(int val, int count){
            this.val = val;
            this.count = count;
        }
    }
    public int sumSubarrayMins(int[] A) {
        if(A == null || A.length == 0) return 0;
        Stack<Pair> left = new Stack<>();
        int[] leftArr = new int[A.length];
        Stack<Pair> right = new Stack<>();
        int[] rightArr = new int[A.length];
        for(int i = 0; i < A.length; i++){
            int count = 1;
            while(!left.isEmpty() && A[i] < left.peek().val){
                count += left.pop().count;
            }
            left.push(new Pair(A[i], count));
            leftArr[i] = count;
        }
        for(int i = A.length - 1; i >= 0; i--){
            int count = 1;
            while(!right.isEmpty() && A[i] <= right.peek().val){
                count += right.pop().count;
            }
            right.push(new Pair(A[i], count));
            rightArr[i] = count;
        }
        long res = 0;
        for(int i = 0; i < A.length; i++){
            res += A[i] * leftArr[i] * rightArr[i];
        }
        return (int)(res % (1e9 + 7));
    }
}
