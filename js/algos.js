// Release 0

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
console.log(phrase_size(["Sanjay","Sanjay Nelson","Sanjay William Nelson"]));


// Release 1
// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) Here are some sample objects and their expected return values:

// Match_found starts off as false
// Take input of 2 hashs
// nested for loops, if hash kv = hash2 kv, boolean becomes true
// return boolean

function shared_pair (hash1, hash2) {
  var match_found = false;
  for (var i = 0; i < Object.keys(hash1).length; i++) {
    for (var i2 = 0; i2 < Object.keys(hash2).length; i2++) {
      if ((Object.keys(hash1)[i] == Object.keys(hash2)[i2]) && (Object.values(hash1)[i] == Object.values(hash2)[i2])) {
          match_found = true;
        } else {
      }
  }
  }
  return match_found
}

console.log(shared_pair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(shared_pair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log(shared_pair({Cat: "Dog", legs: 4}, {animal: "Dog", legs: 3}));

// Release 2

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

// Function will input variable integer
// Empty array
// reusable variable for individual words
// Variable of Alphabet for letters
// use number of words to determine words to create, and randomly pick length between 1-10
// pick random letters the random length of times, use that to create word, then put word into array

function rand_strings(num_words) {
  var return_array = [];
  var alphabet = "abcdefghijklmnopqrstuvwxyz"
  for (i = 0; i < num_words; i++) {
    var word = '';
    var wordlength = Math.floor((Math.random() * 10) + 1);
    for ( i2 = 0; i2 < wordlength; i2++) {
      word += alphabet[Math.floor((Math.random() * alphabet.length))]
    }
    return_array.push(word)
  }
  return return_array
}

console.log(rand_strings(2));
console.log(rand_strings(4));