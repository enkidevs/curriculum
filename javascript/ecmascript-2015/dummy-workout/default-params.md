---
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Functions/Default_parameters){website}'

  - '[SitePoint](https://www.sitepoint.com/es6-default-parameters/){website}'

---
# Default Params

---
## Content

In ECMAScript if a function with parameters is called without supplying arguments then any arguments are undefined:

```
function test(x){
   console.log(x); //undefined
}

test();
```

If this is a valid use case for the function then developers would test to see if arguments were initialised or use truthy/falsy shortcuts to set initial values:

```
function test(x,y){
   if(x==undefined) {
      x=1; //default
   }

   y = y || "default";
   
   console.log(x); //1
   console.log(y); //"default"
}
```
Default parameters allow you to declare a default to be used if an argument is not supplied.

To declare a default parameter simply specify the default value next to the argument in the function signature:

```
function test(x=1, y="default"){
...
}
```

Default parameters can also be a function or even other parameters:

```
function test(x=someFunction()){
...
}

function test(x="1", y=x){
...
}
```

Default parameters are a great easy to use feature that will result in more succinct and readable code.
 
