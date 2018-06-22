---
author: pawel

levels:

  - advanced

  - medium

type: normal

category: feature

standards:

  javascript.data-types-structures.3: 10

  javascript.data-types-structures.4: 10
  javascript.evaluate-expressions.6: 10
  javascript.evaluate-expressions.7: 10

tags:
  - introduction


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwnProperty){website}'


aspects:
  - introduction


---

# `hasOwnProperty` method

---
## Content

The `hasOwnProperty` method returns a boolean indicating whether the object has the specified property.

```
client = new Object();
client.connect = 'true';

function foo() {
  client.newConnect = client.connect
  delete client.connect
}

client.hasOwnProperty('connect');
// returns true
foo();
client.hasOwnProperty('connect');
// returns false

```

Using `hasOwnProperty` is a reliable method of checking for the existence of a property of an object.

It is considered the right practice to use `hasOwnProperty` in every `for in loop` to avoid errors from extended native prototypes.

---
## Practice

What does the following JS code return? ???

```javascript
enki = new Object();
enki.practiceQuestion = 'true';

function tricky() {
   enki.newQuestion = enki.practiceQuestion;
   delete enki.practiceQuestion;
}

enki.hasOwnProperty('practiceQuestion');
enki.hasOwnProperty('magicPowers');
tricky();
enki.hasOwnProperty('practiceQuestion');
```


* True, False, False
* True, False, True
* True, True, False
* False, True, True

---
## Revision

`obj.hasOwnProperty('prop')` returns false if

 ???


* obj hasn’t got ‘prop’ as property
* obj has the property
* obj has the property and its value is null
 
