---
author: pawel

levels:

  - basic

type: normal

category: best practice

standards:

  - js.evaluate-expressions.3: 10

  - js.write-expressions.1: 10

tags:

  - strings

  - html

  - introduction

  - workout


links:

  - '[jsperf.com](http://jsperf.com/string-concat-vs-array-join-10000){website}'


---

# Most efficient way to build `HTML` strings

---
## Content

On modern browsers, building `HTML` strings with `.join()` is less efficient than concatenating strings with `+`.

So, adding the values to an array and then joining them at the end:

```javascript
var html = [];
for(var i=0; i<100; i++) {
  html.push('<p>', i, '</p>');
}
html = html.join('');
```

Runs slower than the straightforward method of building `HTML` strings using `+=`:

```javascript
var html = '';
for(var i=0; i<100; i++) {
  html += '<p>' + i + '</p>'
}
```

---
## Revision

What's the more efficient way to build `HTML` strings in modern browsers?
```
1) +
2) join()
3) concat()
```

???


* `1)`
* `2)`
* `3)`

