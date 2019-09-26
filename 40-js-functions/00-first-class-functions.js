setTimeout(() => {
  console.log('remember to do the laundry!')
}, 5000)

let groceryReminder = () => {
  console.log('remember to buy pork chops')
}
setTimeout(groceryReminder, 3000)

let seconds = 0
setInterval(() => {
  seconds++
  console.log(seconds, 'have elapsed') 
}, 1000);