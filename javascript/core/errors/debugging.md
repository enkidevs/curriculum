# Debugging
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

tags:
  - introduction
  - workout

standards:
  js.exceptions.4: 10

category: must-know

---
## Content

One of the most common debugging options is the **browser tools**.

Each browsers tools are slightly different but all will contain a debugger and console where you can add breakpoints, inspect variables etc.

On most browsers the debugging features can be brought up with the **F12** key.

**debugger;**

If you want the debugger to stop on a line of code and dont want to add a breakpoint you can add the statement ```debugger;``` in your code. Then if the browser tools are open the debugger will stop when it reaches this statement.

**Logging Variables**

It can be useful to find out the values of variables when debugging code.

Some developers will use an alert statement to do this:
```
alert(myVar);
```
A better way is to use the console.log statement to write the variables value out to the console:
```
console.log(myVar);
```

---
## Practice

What statement will make the debugger stop at its line?

???

*`debugger;`
*`stop;`
*`break;`
*`debug;`

---
## Revision

How can you log variables into the console?

```
???.???(myVar);
```
*`console`
*`log`
*`alert`
*`debugger;`
*`addVar`
