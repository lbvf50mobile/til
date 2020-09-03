<?php
 echo("alias x='php 20200903_Thursday/20200903.php'\n");

 # Snippet for a Codewars.com: Maze Runner.
 function change_value(){
    $a = 0;
    $actions = [
      'increase' => function() use (&$a){ $a += 1;}, // Need to use reference here.
      'decrease' => function() use (&$a){ $a -= 1;}
      ];
    $actions['increase']();
    echo "$a == 1; \n"; # 1 == 1;
    $actions['decrease']();
    echo "$a == 0; \n"; # 0 == 0;
  }
  change_value();