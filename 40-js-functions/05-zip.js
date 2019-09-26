function zip(arr1, arr2, cb) {
  for (let i = 0; i < arr1.length; i++) {
    let item1 = arr1[i]
    let item2 = arr2[i]
    cb(item1, item2)
  }
}

let cities = ['Seattle', 'Vancouver', 'Portland']
let populations = [600100, 2300400, 1]

zip(cities, populations, console.log)
zip(cities, populations, (foo) => console.log(foo))
zip(cities, populations, (city, population) => {

})

let numbers = [.2345, 234.3456, 23.3456, 65.2345]
let rounded = numbers.map(Math.round)
console.log(rounded)