a();
b();
function b(){console.log(2,'b', c())}
function a(){ console.log(1,'a',c())}
function c(){ return 3;}
