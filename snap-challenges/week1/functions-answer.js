/**
 * function that takes two numbers and multiplies them together
 *
 * @param number1 number first number to be multiplied
 * @param number2 number second number to be multiplied
 * @return number value of number1 times number2
 **/
function multiply(number1, number2) {

	const answer = number1 * number2
	console.log('answer for multiplication', answer)
	return answer
}
multiply(3,5)

/**
 *  function that takes two strings as arguments and returns a new combined string
 *
 * @param string1 first string value to be concatenated
 * @param string2 second string value to be concatenated
 * @return string value of the concatenating string1 and string2
 **/

function concatenatingStrings(string1, string2) {
	return string1 + ' ' +  string2
}

let string1 = 'hello'
let string2 = 'world'
const combinedString = concatenatingStrings(string1, string2)

console.log('answer for concatenation', combinedString)


