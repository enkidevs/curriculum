---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: best practice

links:

  - '[www.youtube.com]((https://www.youtube.com/watch?v=Uk2bgp8OLT8)){website}'

---
# Browserify with Transforms

---
## Content

One of *browserify's* most powerful features are *source transforms*. A source transform is a stream injected between the resolved module and the content returned.

An example of a *source transform* would be compiling CoffeeScript into JavaScript.

Below, a *source transform*, `varify`, is used to convert all `const` assignments to `var` assignments. This allows you to have the benefits of immutable variables while staying compatible with older browsers don't support `const`.

Take the following JavaScript:
```javaScript
const a = 1;
var keep = { const: 1 };
keep.const = 2;
const foo = function () {
  console.log('Using transforms!');
};
```
Passing in the above file and running Browserify with the `varify` transform:
```javaScript
require('browserify')()
  .transform(require('varify'))
  .add('enki/sample.js')
  .bundle()
  .pipe(process.stdout);
```
Produces:
```javaScript
var a = 1;
var keep = { const: 1 };
keep.const = 2;
var foo = function () {
  console.log('Using transforms!');
};
```

---
## Revision

Which of the following lines of code correctly runs Browserify with the *babelify* transform? ???
* .transform(require('babelify'))
* .require(transform('babelify'))
* .transform(browserify('babelify'))
* .require(browserify('babelify'))