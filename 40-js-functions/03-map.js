// pass each element of the array to the callback function
// receive a result from the callback function
// store the result in an array and return that array
function map(arr, callbackFunction) {
  let result = []
  for (let i = 0; i < arr.length; i++) {
    let arrayElement = arr[i]
    let mappedValue = callbackFunction(arrayElement)
    result.push(mappedValue)
  }
  return result
}

function double(num) { return num * 2}
function triple(num) { return num * 3}
function square(num) { return num * num}

console.log(map([1, 2, 3, 4, 5, 6], double))
console.log(map([1, 2, 3, 4, 5, 6], triple))
console.log(map([1, 2, 3, 4, 5, 6], square))