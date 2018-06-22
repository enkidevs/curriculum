---
author: pawel

levels:
  - basic

type: normal

category: best practice

standards:
  javascript.evaluate-expressions.3: 10
  javascript.write-expressions.1: 10

tags:
  - strings
  - html
  - introduction
  - workout

links:
  - '[jsperf.com](http://jsperf.com/string-concat-vs-array-join-10000){website}'

aspects:
  - introduction
  - workout


---
# Most efficient way to build `HTML` strings

---
## Content

On modern browsers, building **HTML** strings with `.join()` is less efficient than concatenating strings with the `+` operator. This is due to the fact that the plus operator is optimized internally by modern JavaScript egines.

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
## Practice

Fill in the gaps of the following snippet such that the `squares` string will contain, one after the other, the square value of all numbers from `1` to `10`:

```javascript
var squares = '';
for (var i = 1; i ??? 10; i ++) {
  squares ??? i*i ??? ' '
}
console.log(squares)
// "1 4 9 16 25 36 49 64 81 100 "
```

* <=
* +=
* +
* =+
* <
* >
* ++
* join
* concat
* /
* %

---
## Revision

What's the more efficient way to build `HTML` strings in modern browsers?

```bash
1) + (plus operator)
2) join()
3) concat()
```

???

* 1
* 2
* 3
 
