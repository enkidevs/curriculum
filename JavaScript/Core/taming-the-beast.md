# Taming the beast
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: evaluateThis

category: tip

---
## Content

In each of the following cases, answer what will be shown in the console.

Select the correct of the three options to score points.

---
## Game Content

```
typeof(null);
```
* `object`
* `null`
* `undefined`
---
```
null instanceof Object
```
* `false`
* `true`
* `Object`
---
```
var x = 0;
alert(x == false);
```
* true
* false
* 0
---
```
0.1 + 0.2 == 0.3

```
* false
* true
* 
---
```
var enki;
enki == undefined;
```
* true
* false
* enki
---
```
undefined = "Hello world"
var enki;
enki == undefined;
```
* true
* false
* enki
---
```
var x = 0;
alert(x === false);
```
* false
* true
* 0
---
```
(function(){
  return typeof arguments;
})();
```
* "object"
* "arguments"
* `undefined`
---
```
(function(x){
  delete x;
  var a = x;
  return a;
})('Enki');
```
* "Enki"
* `null`
* `undefined`
---
```
var a = function b(){ 
  return 'Hi World'; 
};
typeof(b());
```
* Error
* "string"
* "function"
* "number"