# Keywords in hash keys
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

notes: 'Same issue, not sure if it''s not really really basic.'

links:

  - >-
    [bonsaiden.github.io](http://bonsaiden.github.io/JavaScript-Garden/){website}

---
## Content

Object properties can either be presented as strings or plain characters. 

```
var testObject = {
  'case': "Random string",
  delete: "Another random string"
}
```

However, it is considered bad practice to leave keywords such as `delete` unquoted as it may confuse readers and syntax highlighter.


Instead, use quotes:

```
var testObject = {
  'case': "Random string",
  'delete': "Another random string"
}
```

Using unquoted keywords can also be bad for portability and would raise a `Syntax Error` with old JavaScript engines.

---
## Revision

How would you rewrite object properties in order to avoid `Syntax Error` ?
```javascript
var dog = {
  name: "Max",
  age: "5",
  typeof: "beagle"
  // ???
}
``` 
*`"typeof"`
*’typeof’
*’name’
*’age’