// iterates over the array and returns a new
// array of values that return true when they
// are passed to the callback function.
function filter(arr, testFunction) {
  let result = []
  for (let i = 0; i < arr.length; i++) {
    let arrayElement = arr[i]
    let isIncluded = testFunction(arrayElement)
    if (isIncluded) {
      result.push(arrayElement)
    }
  }
  return result
}

let aa = [1, 2, 3, 4, 5, 6, 7, 8, 9]
function isEven(num) { return num % 2 === 0}

console.log(filter(aa, isEven))