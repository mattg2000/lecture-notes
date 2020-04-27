// for (let i = 1; i <= limit; i++) {
// 	if ((i % 3 === 0) && (i % 5 === 0)) {
// 		console.log(`${i} fizzbuzz`)
// 	} else if (i % 3 === 0) {
// 		console.log(`${i} fizz`)
//
// 	} else if (i % 5 === 0) {
// 		console.log(`${i} buzz`)
// 	}
// }

// function fizzbuzz (limit) {
// 	console.log(limit)
// for (let i = 1; i <= limit; i++) {
// 	if ((i % 3 === 0) && (i % 5 === 0)) {
// 		console.log(`${i} fizzbuzz`)
// 	} else if (i % 3 === 0) {
// 		console.log(`${i} fizz`)
//
// 	} else if (i % 5 === 0) {
// 		console.log(`${i} buzz`)
// 	}
// }
// }
//
// fizzbuzz(100)

function fizzbuzzWithForeach (limit) {
	let arrayOfNumbers = []

	for (let i = 1; i <= limit; i++) {
		arrayOfNumbers.push(i)
	}

	arrayOfNumbers.forEach(function (i) {
		if ((i % 3 === 0) && (i % 5 === 0)) {
			console.log(`${i} fizzbuzz`)
		} else if (i % 3 === 0) {
			console.log(`${i} fizz`)

		} else if (i % 5 === 0) {
			console.log(`${i} buzz`)
		}
	})
}

fizzbuzzWithForeach(50);