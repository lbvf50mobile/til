console.log("alias x='node 20190430_Tuesday/20190430.js'");

// JS Templates literals, tagged templates;

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals#Tagged_templates

var v = "vAr";

let correct_use = (string,variable) => console.log({string: string, variable: variable})
correct_use`this is cool ${v} boom`
correct_use`this is cool ${v}`
