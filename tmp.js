// https://www.codewars.com/kata/football-yellow-and-red-cards/javascript
// https://stackoverflow.com/questions/3261587/subclassing-javascript-arrays-typeerror-array-prototype-tostring-is-not-generi
// http://perfectionkills.com/how-ecmascript-5-still-does-not-allow-to-subclass-an-array/
Array.prototype.create_team = function(){ 
    Array(12).fill(1).map( x => new Object({R: 0, Y:0, in: true})).forEach( x => this.push(x)); 
    this[0].in = false // One player on the bench 
    return this;
}
Array.prototype.count = function(){ return this.filter( x => x.in).length;}
Array.prototype.remove = function(){ this.forEach( y => {if(y.R >= 1 || y.Y >=2) y.in = false})}
function menStillStanding(cards) {
    let [a,b] = [(new Array).create_team(), (new Array).create_team()]
    let teams = {A: a, B: b}
    cards.some(x =>{
       let [_,team, player, card] = x.match(/([A-Z])(\d+)([A-Z])/);
       let [tm, plr] = [teams[team],teams[team][player]];
       plr[card] += 1;
       tm.remove();
       return 7 > tm.count();
    });
    return [a.count(), b.count()];
  }

  console.log(menStillStanding(["A4Y", "A4Y"]).toString() == [10,11].toString());
  console.log( (new Array).create_team());