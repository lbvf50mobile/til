console.log("alias x='node 20190529_Wednesday/20190529.js'");

// JS Inheritance and the prototype chain.

// JavaScript is a bit confusing for developers experienced in class-based languages
// (like Java or C++), as it is dynamic and does not provide a class implementation per se
// (the class keyword is introduced in ES2015, but is syntactical sugar, JavaScrit remains
// prototype-based).

// When it comes to inheritance, JavaScript only has one construct: objects. Each
// object has a private property which holds a link to another object called its prototype.
// That prototype object has a prototype of its own, and so on until an object is reached with
// null as it's prototype. By definiton, null has no prototype, and acts as the final link in this 
// prototype chain.