---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

aspects:
  - introduction

links:
  - '[HTML <time> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time){documentation}'

---
# Intro `<time>`
---
## Content

The HTML `<time>` element is used to represent a specific period of time. This element has a machine-readable `datetime` attribute that indicates the time and or date of the `<time>` element. The `datetime` attribute has to be in a specific format.

Full Date format: `YYYY-MM-DDThh:mm:ssTZD`

* YYYY -  Year
* MM   -  Month
* DD   -  Day
* T    -  A separator( required if date includes time)
* hh   -  hours
* mm   -  minutes
* ss   -  seconds
* TZD  -  Time Zone Designator(Greenwich Mean Time)

Full Period in time format: `PTDHMS`

* P    -  Period
* D    -  Days
* H    -  Hours
* M    -  Minutes
* S    -  Seconds


### Examples of formats:

Year:
  - 2018
  - 0018

Month:
  - 2018-06

Date:
  - 2018-06-01

Yearless Date:
  - 06-01

Week string:
  - 2018-W5

Time:
  - 15:33
  - 15:33:12
  - 15:33:12:551

Local date and time:
  - 2018-06-01T15:33:12:551

Global Date and time:
  - 2018-06-01T15:33:12:551z
  - 2018-06-01 15:33:12:551z
  - 2018-06-01 15:33:12:551-0400(04:00 is UTC-4)
  - 2018-06-01 15:33:12:551+03:00(04:00 is UTC+3)

Duration:
  - P5D = duration of 5 days
  - P1H12M = durationn of 1 hour and 12 minutes


Since the `datetime` attribute is machine-readable, this can help user agents add events to the user's calendar like in these examples:

Example:
```html
<p> The class starts at
  <time> 08:00</time>
</p>
```
Result:

![element-time-1](https://img.enkipro.com/5c7f2e3b34d43cb42042e0b722cff81f.png)

[View CodePen](https://codepen.io/enkidevs/pen/qyROGe)

Another Example:
```html
<p>
Date of birth:
<time 1993-12-06 18:12:24>
  December 6, 1993
  at 18:12:24
  </time>
</p>
```
Result:

![element-time-2](https://img.enkipro.com/522c250380d236a6eba0cbe53555d171.png)

[View CodePen](https://codepen.io/enkidevs/pen/oMBbvN)

Example with datetime:
```html
<p>
  WW2 ended
  <time datetime="1945-09-02">
  September 2, 1945</time>.
</p>
```
Result:

![element-time-3](https://img.enkipro.com/2da767e543dbe16abb35d97344d23339.png)

[View CodePen](https://codepen.io/enkidevs/pen/MBJKgB)

---
## Practice

Write the code to properly declare the date:

`<p>`WW2 ended <??? ???="???">September 2, 1945<???>.`</p>`

* time
* datetime
* 1945-09-02
* /time
* date
* 02-09-1945
* /date
* /datetime

---
## Revision

What HTML element is used to make dates & times machine-readable?

???

When using the `<time>` element, what attribute is used to declare the machine-readable date?

```html
<time
  ???="2007-06-29">
  June 29th, 2007
</time>
```

* `<time>`
* datetime
* `<date>`
* `<event>`
* `<timedate>`
* date
* event
* timedate
* duration


---
## Quiz

### How much do you know about the `<time>` element?

Match the appropriate datetime attributes:

Dec 25th, 1975 at 6pm: `<time datetime="???">`
Three-Day Event: `<time datetime="???">`

* 1975-12-25T18:00
* P3D
* 12-25-1975T18:00
* 1975-12-25T06:00
* 12-25-1975T06:00
* 3D
* D3
