// arr: an array to iterate over
// cb: a callback function that will receive each element as a parameter
function forEach(arr, callbackFunction) {
  for (let i = 0; i < arr.length; i++) {
    let arrayElement = arr[i]
    callbackFunction(arrayElement)
  }
}

function prettyPrint(thing) {
  console.log('~*~', thing, '~*~')
}

let aa = ['cheese', 'milk', 'cottage cheese']
forEach(aa, (item) => {
  console.log(item)
})

forEach(aa, prettyPrint)
forEach(['cat', 'dog'], prettyPrint)
