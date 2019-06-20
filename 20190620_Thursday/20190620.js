console.log("alias x='node 20190620_Thursday/20190620.js'");

// JS enumerable property.

// https://www.codewars.com/kata/insert-value-into-an-array/javascript
const boom = function(index,value){
    let z = this.length;
    index = index < 0 ? 0 : index;
    index = index > z ? z : index;
    this.splice(index,0,value)
    return this;
  }
  // https://stackoverflow.com/a/17893807/8574922
  Object.defineProperty(Array.prototype, 'insert', { value: boom , enumerable: false });
  console.log(Array.prototype.propertyIsEnumerable('insert'),'enumerable')

  console.log([1,2,3,5].insert(3,4));