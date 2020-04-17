---
author: mihaiberq

levels:
  - beginner
  - basic

type: normal

category: tip

standards:
  javascript.identify-common-design-patterns.7: 10

tags:
  - introduction


aspects:
  - introduction


---
# Styling Brackets

---
## Content

Styling is something that shouldn't influence the performance of the code in any way, and differs from team to team. It's rare that developers agree on camel case syntax versus underscore naming conventions, tabs versus spaces, or brackets position. However, for JavaScript in general and Node in particular, brackets location isn't just a debate. Let's look at  an example:

```javascript
function right() {
  return {
    status: 'right',
  };
}

function wrong()
{
  return
  {
    status: 'wrong',
  };
}
```
At the first glance, both functions seem to return the same **object**, which contains the property `status`. However, the output is as follows:

```javascript
console.log(right().status);
// right

console.log(wrong().status);
// undefined
```
JavaScript's main complex data type is the `Object`. Object instances are created using brackets:
```javascript
const obj = {
  status: 'right',
};
```
Brackets are also used for separating blocks of code with the same scope (functions, if/else clauses, etc.):
```javascript
function echo() {
  const status = 'right';
}
// or
function echoNew()
{
  const status = 'right';
}
// or even
function echoNewNew()         {
  if(true)                    {
    const status = 'right';
    console.log('Please stop.');
                              }
  else                        {
    console.log('I\'m serious.');
                              }
                              }

console.log(status);
// undefined
```

Wherever you choose to place your brackets limiting scope, the result will be the same: `status` is undefined. However, things are not the same when brackets are used to return an object:

```javascript
function wrong()
{
  return
  {
    status: 'wrong',
  };
}
console.log(wrong())
```
Will print `undefined`. This happens because of a JavaScript property called *automatic semicolon insertion* (ASI). This property is what allows you to write JS code without having to add semicolon after each statement. Hence, the function above effectively becomes:
```javascript
function wrong() {
  return; // equivalent to return undefined;
  // this is ignored
  {
    status: 'wrong'
  };
}
```
In conclusion, having the open bracket on the same line as the function is recommended as it promotes the correct syntax is cases where JS would normally append a semicolon.

*Note:* This is not restricted to brackets only. The following syntax:
```javascript
function wrong() {
  return
    'wrong';
}
```
Will also return undefined.

---
## Practice

In order for the brackets placement to be less prone to error and consistent throughout the project, it is recommended that you use style ??? in your code:
```javascript
// style A
function A() {
  return {
    style: 'A',
  };
}

// style B

function B()         {
  return             {
    style: 'B'
                     }
                     }

// style C
function C()
{
  return
  {
    style: 'C',
  };
}
```

* A
* B
* C

---
## Revision

What is the name of the JavaScript language feature acting upon the following return clause?
```js
function tictac() {
  return
  {
    missing: 'toe',
  };
}
```
???


* Automatic semicolon insertion
* Scoping
* Automatic bracket placement
* Object property creation

---
## Quiz 

### What will the following snippet output?

```javascript
function pi() {
  return
  {
    pi: 3.14
  }
}
console.log(pi())
```

 ???

* undefined
* [object Object]
* SyntaxError
* [object Object]

 
