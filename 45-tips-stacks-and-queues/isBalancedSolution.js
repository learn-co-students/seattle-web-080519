function isBalanced(string) {
    let array = []
    let data = {
        "(": ")",
        "{" : "}"
    }
    for (let i = 0; i < string.length; i++) {
        if (string[i] === '{' || string[i] === '(') {
            array.push(string[i])
        }
        else if (string[i] === ")" || string[i] === "}") {
            const last = array.pop()
            if (string[i] !== data[last]) {
                return false
            }
        }
    }
    return (array.length === 0)
}

console.log(isBalanced('()'))
console.log(isBalanced("(("))
console.log(isBalanced("({()()})"))