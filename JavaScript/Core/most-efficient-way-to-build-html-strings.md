# Most efficient way to build `HTML` strings
author: pawel

levels:

  - basic

type: normal

category: best practice

tags:

  - html

notes: ''

links:

  - '[jsperf.com](http://jsperf.com/string-concat-vs-array-join-10000){website}'

---
## Content

On modern browsers, building `HTML` strings with `.join()` is less efficient than the naive method. 

So, adding the values to an array and then joining them at the end:

```javascript
var html = [];
for(var i=0; i<100; i++) {
  html.push('<p>', i, '</p>');
}
html = html.join(‘’);
```

Runs slower than the naive method of building `HTML` strings using `+=`:

```javascript
var html = '';
for(var i=0; i<100; i++) {
  html += '<p>' + i + '</p>'
}
```

This has been true since Firefox 1.0.

---
## Revision

What's the more efficient way to build `HTML` strings in modern browsers?

1) `+=`
2) `join()`

???

*`1)`
*`2)`