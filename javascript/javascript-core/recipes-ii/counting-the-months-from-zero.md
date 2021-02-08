---
author: jordanfish
type: normal
category: caveats
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Counting the Months From Zero


---

## Content

The months of the year in a date object begin counting from zero.

```javascript
let date = new Date(2015, 1, 21);
console.log(date);
```

The date will not be the 21st of January, but instead this date object represents: `Sat Feb 21 2015 00:00:00 GMT-700`.

To print the 21st of January, use month `0`:

```javascript
let date = new Date(2015, 0, 21);
console.log(date);
```

Similarly, using the 12th month of 2015 in a date object will print January of 2016:

```javascript
let date = new Date(2015, 12, 21);
console.log(date);
// date = Thur Jan 21 2016 00:00:00
```


---

## Practice

Fill in the missing gaps to create a date on the 15 December 2019

```javascript
let date = new ???(???, ???, ???)
console.log(date)
// Sun Dec 15 2019 00:00:00 GMT+0000 (GMT)
```

- Date
- 2019
- 11
- 15
- 2018
- 12
- 0
- 13
- 14
- date
- D
- DateTime


---

## Revision

What will the following code snippet print?

```javascript
let date = new Date(2016, 1, 5);
console.log(date);
// Tue ??? ??? 2016
// 00:00:00 GMT-700
```

- Feb
- 5
- 0
- Jan
- Dec


---

## Quiz

### how does JavaScript's Date object work?


```javascript
console.log(new Date(2016, 5, 31));
```

???

- July 1 2016
- June 31 2016
- May 31 2016
- June 1 2016
 
