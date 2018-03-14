---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know


links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-template-strings-in-depth){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals){website}'

inAlgoPool:

---

# Template Literals

---
## Content

A common task in any programming language is to concatenate and format strings.

You have probably found yourself writing code similar to the following many times:

```
var greeting = "Hi " + name;
```

Template Literals provide a more succinct and readable form allowing us to specify values to be replaced within the string by surrounding it with curly braces and a dollar sign.

Note how the string itself is also enclosed with the *backtick* characters instead of ' or ":

```
var name = "Enki";
var greeting = `Hello ${name}`;
//"Hello Enki"  
```

We can also use template literals to spread our declaration across multiple lines:

```
var name = "User";
var greeting = `Hello ${name}
Line1
Line2`;

/*
"Hello User
Line1
Line2"
*/
```

We can even use expressions within the placeholders:

```
var x=1;
var y=2;
var test = `Hello ${x + y}`;
//Hello 3
```
Note if for some reason you wanted to use a backtick in your expression this can be done by escaping it with a backslash e.g.

```
var greeting = `hello \``;
```

