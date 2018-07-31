---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

links:
  - '[CodePen: Element Time (1)](https://codepen.io/enkidevs/pen/qyROGe){code}'
  - '[CodePen: Element Time (2)](https://codepen.io/enkidevs/pen/oMBbvN){code}'
  - '[CodePen: Element Time (3)](https://codepen.io/enkidevs/pen/MBJKgB){code}'
  - '[MDN docs for time](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time){website}'
  
---
# Intro time
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
```
<p> The class starts at
  <time> 08:00</time>
</p>
```
Result:

![element-time-1](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2256%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2256%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EThe%20class%20starts%20at%2008%3A00.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/qyROGe)-->

Another Example:
```
<p>
Date of birth:
<time 1993-12-06 18:12:24>
  December 6, 1993 
  at 18:12:24
  </time>
</p>
```
Result:

![element-time-2](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2273%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2273%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EDate%20of%20birth%3A%20December%206%2C%201993%20at%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3E18%3A12%3A24%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/oMBbvN)-->

Example with datetime:
```
<p>
  WW2 ended 
  <time datetime="1945-09-02">
  September 2, 1945</time>.
</p>
```
Result: 

![element-time-3](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2256%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2256%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EWW2%20ended%20September%202%2C%201945.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/MBJKgB)-->

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

```
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
