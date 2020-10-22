---
author: Bruno
type: normal
category: tip
links:
  - '[2ality.com](http://www.2ality.com/2014/02/time-values.html){blog}'
  - '[Luxon](https://moment.github.io/luxon/){documentation}'
  - '[Date-fns](https://date-fns.org/){documentation}'
---

# Milliseconds Since Epoch


---

## Content

Standard way:

```javascript
new Date().getTime()
// 1259359833574
```

Shorter way:

```javascript
+new Date()
// 1259359833574
```

The above is using the `+` shortcut to convert the date object to a number.

For more powerful date manipulation, try `date-fn` or `Luxon`. 

> 💡 The links for `date-fn` and `Luxon` will be in the "Learn more" section.


---

## Practice

What is missing from the following code snippet for getting the current time in milliseconds? 

```javascript
???new ???();
```

- `+`
- `Date`
- `=`
- `typeof`
- `milliseconds`
- `mseconds`


---

## Revision

Get the current time in milliseconds(since 1 Jan 1970):

```javascript
var time = Date.???;
```

- now();
- getMillis();
- getMilliseconds();
