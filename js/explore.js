// create empty string variable
// for each character, i will be phrase length, until i = 0, subtract 1 from i after
// new variable is filled with the old phrases character at the index of i
// return new phrase

function reverse(phrase) {
  var newphrase = ""
  for (var i = phrase.length - 1; i >= 0; i--) {
    newphrase += (phrase[i])
  }
  return newphrase;
}

console.log(reverse("hello"))