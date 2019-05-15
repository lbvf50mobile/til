<?php
 echo("alias x='php 20190515_Wednesday/20190515.php'");

 // PHP transpose.

 // https://www.php.net/manual/en/function.array-map.php
 // Example #4 Creating an array of arrays
 // https://www.php.net/manual/en/migration56.new-features.php
 // Arrays and Traversable objects can be unpacked into argument lists when calling functions by using the ... operator. This is also known as the splat operator in other languages, including Ruby.


 $a = array(array(1,2),array(3,4));
 var_dump($a);

 function transpose($a){
     return array_map(null,...$a);
 };
 var_dump(transpose($a));
 var_dump(transpose(transpose($a)));
