
// user inputs a strin
// accept string (not numbers) and turns it into a string
// split string so that each letter is stored as an array value.
// reverse the array
// join the array so that it becomes a single string. 
// accept multiple values of the same argument

if (1 == 1) {
function reverseString(str) {
	var splitString = str.split("");
	var reverseArray = splitString.reverse();
	var joinArray = reverseArray.join("");
	return joinArray; 
	}
}


console.log(reverseString("apples"));
