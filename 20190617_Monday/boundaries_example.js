// Using Regex boundaries to fix buggy string.
buggyMultiline = `zey, ihe light-greon apple
zangs on ihe greon traa`;

// 1) Use ^ to fix the matching at the begining of the sting, and right after newline.
buggyMultiline = buggyMultiline.replace(/^z/gim,'h'); 
console.log(1, buggyMultiline); // fix 'zey', 'zangs' => 'hey', 'hangs'.

// 2) Use $ to fix mathing at the end of the text.
buggyMultiline = buggyMultiline.replace(/aa$/gim,'ee.'); 
console.log(2, buggyMultiline); // fix  'traa' => 'tree'.

// 3) Use \b to match characters right on border between a word and a space.
buggyMultiline = buggyMultiline.replace(/\bi/gim,'t');
console.log(3, buggyMultiline); // fix  'ihe' but does not touch 'light'.

// 4) Use \B to match characters inside borders of an entity.
fixedMultiline = buggyMultiline.replace(/\Bo/gim,'e');
console.log(4, fixedMultiline); // fix  'greon' but does not touch 'on'