---
author: nene

levels:
  - basic
  - advanced
  - medium

type: normal

category: tip

tags:
  - locale

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Collator){website}'

---
# Internationalization & Localization

---
## Content

`Collator` is an object that provides locale-specific string comparisons. It's aware of Unicode.

To sort through a list of letters in two different languages:

```javascript
var list = [ "ä", "a", "z" ];
var i10nDE = new Intl.Collator("de");
var i10nSV = new Intl.Collator("sv");
```

In German, `ä` sorts with `a`. In Swedish, `ä` sorts after `z`.

```javascript
i10nDE.compare("ä", "z") === -1;
i10nSV.compare("ä", "z") === +1;

console.log(list.sort(i10nDE.compare));
// [ "a", "ä", "z" ]
console.log(list.sort(i10nSV.compare));
// [ "a", "z", "ä" ]
```

---
## Practice

Create a `Collator` based on *German* language:

```javascript
var i10nDE = new ???.???("de");
```

* Intl
* Collator
* Language
* International
* Languages
* String
* Compare

---
## Revision

Which method can you use to compare the ordering of two characters in a specific language, using the `Collator` class?

```javascript
var i10nSV = new Intl.???('sv');

console.log(
  i10nSV.???("ä", "z")
)
// + 1
```

* Collator
* compare
* check
* sort
* sign
* after
* before
 
