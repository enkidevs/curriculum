---
author: Bruno
type: normal
category: tip
links:
  - '[2ality.com](http://www.2ality.com/2014/02/time-values.html){blog}'
  - '[Luxon](https://moment.github.io/luxon/){documentation}'
  - '[Date-fns](https://date-fns.org/){documentation}'
  - >-
    [Intl.DateTimeFormat](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/DateTimeFormat){documentation}
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

Another powerful tool is the `Intl` global object. It has a `DateTimeFormat()` constructor used for date and time formatting.

This constructor creates a new date-time object. It is used for language-sensitive date and time formatting. 

You can use it to:

- convert dates to different location-specific formats for each country
- convert date and time for a specific numbering system
- display time and date in different styles; full, long, medium and short.
- and more.

There are many formatting options for this constructor. You can view them on the link in the "Learn More" section.


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

- `now();`
- `getMillis();`
- `getMilliseconds();`
 
