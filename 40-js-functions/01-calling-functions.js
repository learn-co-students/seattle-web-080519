let click = () => console.log('click')
let bang = () => console.log('BANG!')

let thingToDo = click
if (Math.random() < 1/6) {
  thingToDo = bang
}

thingToDo()
