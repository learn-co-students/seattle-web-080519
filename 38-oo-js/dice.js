class Die {
  constructor() {
    this.faces = 6 
  }

  roll() {
    let result = Math.floor(Math.random() * this.faces) + 1
    return result
  }
}

class D20 extends Die {
  constructor() {
    super()
    this.faces = 20
  }
}

class FancyDie extends D20 {
  roll() {
    let result = super.roll()
    return '~*~' + result + '~*~'
  }
}

let d6 = new Die()
let d20 = new D20()
let fancy = new FancyDie()

roll(d6)
roll(d20)
roll(fancy)

function roll(die) {
  console.log('Rolling a D' + die.faces)
  console.log(die.roll())
  console.log(die.roll())
  console.log(die.roll())
  console.log(die.roll())
  console.log(die.roll())
  console.log(die.roll())
}