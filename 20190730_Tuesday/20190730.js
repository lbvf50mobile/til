console.log("alias x='node 20190730_Tuesday/20190730.js'");

// JS String.prototype.match and RegExp.prototype.exec and RegExp.prototype.test. (JS uses undefined when Ruby uses nil)

console.log("[00:12.00] Happy birthday dear coder,".match(/^\[(\d+):(\d+)\.(\d+)\]( (.*)){0,1}$/g));
console.log(
    /^\[(\d+):(\d+)\.(\d+)\]( (.*)){0,1}$/g.exec("[00:12.00] Happy birthday dear coder,")
    );
    console.log(
        /^\[(\d+):(\d+)\.(\d+)\]( (.*)){0,1}$/g.test("[00:12.00] Happy birthday dear coder,")
        );


        console.log("[00:12.00]".match(/^\[(\d+):(\d+)\.(\d+)\]( (.*)){0,1}$/g));
console.log(
    /^\[(\d+):(\d+)\.(\d+)\]( (.*)){0,1}$/g.exec("[00:12.00]")
    );
    console.log(
        /^\[(\d+):(\d+)\.(\d+)\]( (.*)){0,1}$/g.test("[00:12.00]")
        );