---
author: jordanfish

levels:

  - basic

  - advanced


type: fillTheGap

category: tip

notes: 3 more questions? curr up to 11

standards:
  javascript.evaluate-expressions.1: 1000
  javascript.evaluate-expressions.3: 1000
  javascript.evaluate-expressions.5: 1000
  javascript.evaluate-expressions.7: 1000
  javascript.evaluate-expressions.8: 1000
  javascript.evaluate-expressions.9: 1000

---

# Foo, features and fun facts

---
## Content

Do you know what is the **output** of the following code snippets?

---
## Game Content

```javascript
var foo = function foo() {
  console.log(foo === foo);  
};
foo();
```

* `true`
* `false`
* `ReferenceError`

%exp
This is true because we are comparing two of the same thing. When we refer to `foo` inside the function declaration for `foo`, we are referring to the variable to which the function has been assigned. The name of the function is irrelevant and makes no difference semantically. Therefore we are comparing two of the same variable to which the same function is assigned and the result is `True`.
%

---

```javascript
function aaa() {
  return
    {
      test: 1
    };
}
console.log(typeof aaa());
```

* `undefined`
* `function`
* `number`
* `object`

%exp
This is an exercise in JavaScript's automatic semicolon insertion. While this code looks correct, JavaScript inserts semicolons where it thinks the user has missed them. Once JS has done this, the function changes into:

```javascript
function aaa() {
    return;
    {
        test: 1
    };
}
alert(typeof aaa());
```

Which does not return the object as you would expect, and results in the type of the function being `undefined`, instead of `object` as you might expect.
%

---

```javascript
Number("1") - 1 == 0;
```

* `true`
* `false`
* `TypeError`

%exp
This is true because we are casting a string to a number, and then taking away that exact number from it. The result is zero, and comparison reflects this.
%

---

```javascript
(true + false) > 2 + true;
```

* `false`
* `true`
* `NaN`

%exp
Booleans can be operands to the `+` operator in JavaScript. JS evaluates this by casting the booleans to integers and then adding them. True converts to 1 and False converts to 0. Therefore, this becomes false, as the left hand side of the inequality is equivalent to `1 + 0 = 1` and the right hand side is `2 + 1 = 3` and therefore the whole becomes `1 > 3` which is false.
%

---

```javascript
function bar() {
  return foo;
  foo = 10;
  function foo() {}
  var foo = '11';
}
console.log(typeof bar());
```

* `function`
* `undefined`
* `String`
* `Error`
* `number`

%exp
Considering the placement of the return, it is easy to make the mistake of thinking the above will result in `undefined`, although this is not the case. The result is `function` because JavaScript is compiled by browsers instead of being a purely interpreted language. Function declarations are evaluated during compile time, and therefore while creating the `bar` function `foo` is also created, since it is in the scope of the `bar` function. If it were a function *expression* instead of a *declaration* `undefined` would be the result, since it would not have been evaluated at compile time.
%

---

```javascript
"1" - - "1";
```

* 2
* 0
* 11

%exp
This is an example of two strings being cast as numbers and then subtracted. The subtraction works as one would expect, and therefore a double subtraction is an addition and the result is 2.
%

---

```javascript
[] + [] + 'foo'.split('');
```

* "f,o,o"
* [][]"f,o,o"
* ["f","o","o"]

%exp
Two arrays added together equal the empty string. This is because arrays are objects and **not** primitive data types. During evaluation JavaScript first tries to convert the array into a primitive, but this just results in the array, so it is converted to a string. Since the arrays are empty they both convert to the empty string, `""`, which when added to `"f,o,o"` produce the same, `"f,o,o"`.
%

---

```javascript
new Array(5).toString();
```

* ",,,,"
* "[]"
* []

%exp
This simply creates a new array with five empty items. The string representation of this is `",,,,"`.
%

---

```javascript
var myArr = ['foo', 'bar', 'baz'];
myArr.length = 0;
myArr.push('bin');
console.log(myArr);
```

* ['bin']
* ['foo', 'bar', 'baz']
* ['foo', 'bar', 'baz', 'bin']

%exp
Setting the length of an array to anything lower than its current length truncates it. When we set the length to 0, this effectively erases all its contents. Therefore, when we push `'bin'` on to the array, it is the sole element in it and the result is `['bin']`.
%