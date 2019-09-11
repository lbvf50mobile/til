// https://www.geeksforgeeks.org/even-fibonacci-numbers-sum/
// This dose not works because Even Fibonacci Numbers are not indexes of numbers but there values

const evenFib = n =>{
   if(n < 2) return 0;
   if(2 == n) return 2;
   ef1 = 0n
   ef2 = 2n
   next = 0n
   counter = 1
   while( counter < n){
     next = 4 * ef1 + ef2
     ef2 = ef1
     ef1 = next
     n +=2
   }

   return next
}