/**
 * Find the sum of all unique positive factors of a number.
 *
 * @param number number The number which we are finding factors for.
 * @return number sum of all unique positive factors.
 */
function sumUniquePositiveFactors(number) {
	number = Math.abs(number)

	console.log('sum outside of loop')
	let sum = 0
	for (let i = 1; i <=number; i++) {

	//	console.log('i <=number;', i <=number)
	//	console.log('iterator', i)


		if (number % i === 0) {
			sum = sum + i
			console.log('sum inside loop', sum)
		}
	}
	return sum
}
console.log('final', sumUniquePositiveFactors(8))
/**
 * 1. read arguments for both weight and massInitial
 * 2. if massInitial is "lbs" return weight * 453.6
 * 3. if massInitial is "oz" return weight * 28
 * 4. if massInitial is "kg" return weight * 1000
 * 5. if massInitial is "mg" return weight / 1000
 * 6. else return weight
 **/
/**
 * Convert a weight or mass to grams.
 *
 * @param weight The weight or mass to be converted.
 * @param units The abbreviation for the units in which this weight/mass is measured.
 * @return number mass in grams.
 */
// function convertToGrams(weight, units) {
// 	if (units === 'lb') {
// 		return weight * 453.592;
// 	} else if (units === 'oz') {
// 		return weight * 28.35;
// 	} else if (units === 'kg') {
// 		return weight * 1000;
// 	} else if (units === 'mg') {
// 		return weight / 1000;
// 	} else {
// 		return weight;
// 	}
//}

// Write a function in JavaScript that takes a number and finds the sum of all unique positive factors of a number. (The factors of a number are all numbers that divide evenly into it. For example, the unique positive factors of 12 are 1, 2, 3, 4, 6, and 12, and the sum would thus be 28.)



