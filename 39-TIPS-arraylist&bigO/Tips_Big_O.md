Big O Notation

Measures time and space complexity of operations. Generally we are concerned more with time complexity, because that is where gains can happen.

More generally, code has a cost. What does it take to run it? Or to store the data it makes while running? This can add up in the long run.

Also, always assume the worst case. For example, you could find something in a search right away. But always assume the item is the very last item in the array.

Generally, only the n is stated. For example, if you have two O(n) operations, then really you have O(2n). But the convention is to only call this O(n).

Also, remember syntactic sugar can obscure what is happening. For example, I create a for loop. It is clear to see that this is a loop. But lets say I use a `.findIndex` or a `.map`. Under the hood, the computer is still looping through an array. Even though the code does not show a for loop, a loop is still happening and counts as O(n).

Here are three. We can talk about more, but we have part 2 of this leture next week.

1. Best case O(1). "Constant Time." Fastest. Examples include reading from an index in an array, and appending to an array. There is no need to search to a particular index. The index is already given.

2. O(log(n)). Something like a binary search. Imagine you are searching a phone book for one name only. This would work by dividing the book in half. If the name is in the first half, get rid of the second half. Comntinue like this until the name is found. Every iteration is 1/2 less than before.

3. O(n). "Linear Time." The time taken varies with on the length of the input. Examples include finding something in an array.
```
function arrayFindIndex(array, num) {
  for (let i = 0; i < array.length; i++) {
    if (array[i] === num) {
      return i;
    }
  }
}

arrayFindIndex([1, 2, 3, 4, 5], 5);

```
4. O(n^2). "Quadratic Time." Examples include iterating through two arrays, or having two iterators. Because we are looping through everything twice,

```
function pythagoreanTriplets(maxHypotenuse) {
  let finalArray = [];
  for (let a = 1; a < maxHypotenuse; a++) {
    for (let b = a + 1; b < maxHypotenuse; b++) {
      let c = Math.sqrt(a * a + b * b);
      if (c < maxHypotenuse)
        if (Number.isInteger(c)) {
          if (Math.floor(c) === c) {
            finalArray.push([a, b, c]);
          }
        }
    }
  }
  return finalArray;
}
console.log(pythagoreanTriplets(30));
```

5. O(2^n). "Exponential Time." Examples include recursive calls.

```
function fibonacci(number) {
  if (number < 2) {
    number;
  } else {
    fibonacci(number - 1) + fibonacci(number - 2);
  }
}

fibonacci(10);

```


But there is also space complexity. The amount of storage used is also important. 


```
function addEvens(maxNumber) {
  evenArray = [];
  for (let i = 0; i < maxNumber; i += 2) {
    evenArray.push(i);
  }
  let sum = evenArray.reduce((acc, val) => {
    return acc + val;
  });
  return sum;
}

addEvens(10);

```

This way we get the sum back. But we also created an array that we really did not even need. A better way would be to do this:

```
function addEvens(maxNumber) {
  let sum = 0;
  for (let i = 0; i < maxNumber; i += 2) {
    sum += i;
  }
  return sum;
}

console.log(addEvens(10));
```

This way, we get the same result without making an array. Thus we are reducing our space complexity. 