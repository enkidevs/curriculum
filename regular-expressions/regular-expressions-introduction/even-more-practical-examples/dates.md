---
author: emmab
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Dates


---

## Content

Let's say we want to validate some dates to make sure that they're in the MM/DD/YYYY format.

As always with regex, there are lots of different ways this can be done!

We want to be able to accept the following formats:

    1/1/2020 ✅
    01/01/2020 ✅
    1/01/2020 ✅
    01/1/2020 ✅

So we need our pattern to allow for an optional '0' before single digit dates.

`/^(0?[1-9]|1[0-2])/`

This pattern allows for an optional 0 followed by a single digit, OR a double digit number in the range 10, 11 or 12.

`/(0?[1-9]|[12]\d|3[01])/`

Next we allow another optional 0 followed by a single digit, OR a number in the range 10-29, OR a number in the range 30-31.

`/\d{4}$/`

The final part is the easiest, as we want to accept any 4 digit number. You can also be more restrictive if you want to only accept certain years.

Putting this all together we have:

`/^(0?[1-9]|1[0-2])\/(0?[1-9]|[12]\d|3[01])\/\d{4}$/`

> 💡 To use special characters (like `/` or `.`) as normal characters without any special behavior, we need to add `\` behind them (like `\/` or `\.`). This is called *escaping*.


---

## Practice

How could we specify that we only want dates with years in the range 1900-2099?

???

- /(19|20)\d{2}/
- /(19|20)\d{4}/
- /(19|20){2}/
- /[19|20]\d{2}/


---

## Revision

How could we specify that we only want dates with years in the range 2000-2099?

???

- /20\d{2}/
- /2\d{3}/
- /2\d{2}/
- /2\d{4}/
- /20\d{3}/

