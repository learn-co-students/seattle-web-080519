function pairs(arr, cb) {
  for (let i = 0; i < arr.length; i++) {
    let item1 = arr[i]
    for (let j = i + 1; j < arr.length; j++) {
      let item2 = arr[j]
      cb(item1, item2)
    }
  }
}

let people = ['Henry', 'George', 'Martha', 'Sally']
console.log('one day these people went to a party')
console.log(people)
pairs(people, (person1, person2) => {
  console.log(person1, 'greets', person2)
})

let numbers = [12, 345, 56, 574, 634, 2345, 5234, 56, 12, 99]
pairs(numbers, (num1, num2) => {
  if (num1 === num2) {
    console.log(num1, 'appears twice!')
  }
})
