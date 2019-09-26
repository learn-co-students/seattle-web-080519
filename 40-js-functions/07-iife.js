// Immediately Invoked Function Expression
(function() {
  console.log('immediate!')
})();

(() => {
  console.log('immediate!')
})();

let bank = (() => {
  let balance = 1000
  return {
    balance: balance,
    seeBalance: () => balance,
    withdraw: (amount) => {
      balance -= amount
    },
    deposit: (amount) => {
      balance += amount
    }
  }
})();

console.log('lodash', _)
debugger