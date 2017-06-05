// In algos.js, write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.
// Add driver code that tests your function on a few arrays.

// declare function, with input that is a single array of strings
// using a method like each, fill an empty var with whichever index has a longer .length
// return index

function phrase_size (array) {
  var largeststring = array[0];
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > largeststring.length) {
      largeststring = array[i];
    } else {
    }
  }
  // if ( > array[-1])
  return largeststring;
}
console.log(phrase_size(["long phrase","longest phrase","longer phrase"]));