# Counting the months from zero
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

standards:
  js.standard-library.5: 10

tags:
  - workout 


---
## Content

The months of the year in a date object begin counting from zero.

```
var date = new Date(2015,1,21);
console.log(date);
```
The date that will not be the 21st of January, but instead this date object represents: `Sat Feb 21 2015 00:00:00 GMT-700`.

To print the 21st of January, use month `0`:

```
var date = new Date(2015,0,21);
console.log(date);
```

Similarly, using the 12th month of 2015 in a date object will print January of 2016:

```
var date = new Date(2015,12,21);
console.log(date);
// date = Thur Jan 21 2016 00:00:00
```

---
## Revision

What will the following code snippet print?
```javascript
var date = new Date(2016, 1, 5);
console.log(date);
// Tue ??? ??? 2016
// 00:00:00 GMT-700
```

* `Feb`
* `5`
* `0`
* `Jan`
* `Dec`

---
## Quiz

headline: how does JavaScript's Date object work?

question: console.log(new Date(2016, 5, 31));

answers:
  - July 1 2016
  - June 31 2016
  - May 31 2016
  - June 1 2016
