---
author: pawel

levels:
  - basic

type: normal

category: best practice

standards:
  javascript.data-types-structures.3: 10
  javascript.data-types-structures.4: 10
  javascript.evaluate-expressions.6: 10
  javascript.evaluate-expressions.7: 10

tags:
  - introduction

links:
  - '[bonsaiden.github.io](http://bonsaiden.github.io/JavaScript-Garden/){website}'

notes: 'Same issue, not sure if it''s not really really basic.'

aspects:
  - introduction


---
# Keywords in hash keys

---
## Content

Object properties can either be presented as strings or ugly characters.

```javascript
var testObject = {
  'case': 'Random string',
  delete: 'Another random string'
}
```

However, it is considered bad practice to leave unique keywords such as `delete` unquoted as it may confuse readers and syntax highlighter.

Instead, you can use quotes:

```javascript
var testObject = {
  'case': 'Random string',
  'delete': 'Another random string'
}
```

Using unquoted keywords can also be bad for portability and would raise a `Syntax Error` with old JavaScript engines.

---
## Practice

When do you need to quote object properties names in older JavaScript engines?

???

* when the name is a special keyword
* always
* never
* when the property type is "string"
* only when the property name is "delete"

---
## Revision

How would you rewrite the commented object property in order to avoid `Syntax Error` with old JS engines?

```javascript
var dog = {
  name: 'Max',
  age: '5',
  // typeof: 'beagle'
  ??? ???
}
```

* 'typeof':
* 'beagle'
* typeof
* type of
* beagle
* 'name'
* name
* 'typeof'
* typeof:
 
