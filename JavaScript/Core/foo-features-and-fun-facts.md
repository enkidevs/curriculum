# Foo, features and fun facts
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

notes: 3 more questions? curr up to 11

---
## Content



---
## Game Content

```
var foo = function foo() {
  console.log(foo === foo);  
};
foo();
```
* `true`
* `false`
* `ReferenceError`
---
```
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
---
```
Number("1") - 1 == 0;
```
* `true`
* `false`
* `TypeError`
---
```
(true + false) > 2 + true;
```
* `false`
* `true`
* `NaN`
---
```
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
---
```
"1" - - "1";
```
* 2
* 0 
* 11
---
```
[] + [] + 'foo'.split('');
```
* "f,o,o"
* [][]"f,o,o"
* ["f","o","o"]
---
```
new Array(5).toString();
```
* ",,,,"
* "[]"
* []
---
```
var myArr = ['foo', 'bar', 'baz'];
myArr.length = 0;
myArr.push('bin');
console.log(myArr);
```
* ['bin']
* ['foo', 'bar', 'baz']
* ['foo', 'bar', 'baz', 'bin']