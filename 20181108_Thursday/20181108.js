console.log("alias x='node 20181108_Thursday/20181108.js'")
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment
const Counter = (x) => {
    console.log(x)
}
const Counter1 = ({value}) =>{
    console.log(value)
}

Counter("2")
Counter1({value: "this is value"})