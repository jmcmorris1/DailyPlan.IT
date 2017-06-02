var adults = 1;
var children = 2;
// could I also store children as an array?
// The array.length could be used after array is filtered by age bracket.
// e.g. filtered by price brackets, childCat1 = 1 childCat2 = 2, etc...
var children = [2, 5, 9];

//this example filters the array down to a certain age criteria
var childrenCat1 = children.filter(function(child) {
  return child < 5;
})
console.log(children);
console.log(childrenCat1);

// I'd need to make the filters dynamically linked to the data.
// since the brackets change for each business


var adultCost = 10;
var childCost1 = 5;

var groupCost = (adults * adultCost) + (childrenCat1 * childCost1)

console.log("Total cost: " + groupCost);
console.log("Number of Children: " + children.length)


var words = ["spray", "limit", "elite", "exuberant", "destruction", "present"];

var longWords = words.filter(function(word){
  return word.length > 6;
})

console.log(longWords);
