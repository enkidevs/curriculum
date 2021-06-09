---
author: emmab
type: normal
category: feature
links:
  - '[Time Format](https://www.regextester.com/104042){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Time


---

## Content

Now that we've built a regex pattern to validate dates, let's think about how we can validate time! ⏱

We want to be able to check that our times are in the 24-hour format: **hh:mm:ss**, where **hh** is in the range **00-23**, and **mm** and **ss** are in the range **00-59**.

Our pattern should allow for these three cases:

```plain-text
09:00 ✅
9:00 ✅
9:00:00 ✅
```

Let's get cracking!

`/([01]?\d|2[0-3])/`

This pattern covers the **hh** part. It allows either numbers from 0-19 or numbers from 20-23.

`/[0-5]\d/`

Next, we have the **mm** part which starts with a number from 0-5 followed by any other digit.

`/(:[0-5]\d)?/`

The **ss** part is completely optional, which is why it has been grouped within parentheses.

Putting this all together, and adding ":" in between the hh and mm parts, we have:

`/([01]?\d|2[0-3]):[0-5]\d(:[0-5]\d)?/`

> 💡 There are loads of other ways to write a regex pattern to test time formats. These can change depending on the strength and rules you want to accept.

Check out the Learn More link for a slightly stricter example.


---

## Practice

What can be removed in the **ss** part of our regex pattern to make it mandatory?

`/(:[0-5]\d)?/`

???

- ?
- ()
- :
- \d


---

## Revision

Which of the following times would match on the following regex pattern:

`/([01]?\d|2[0-3]):[0-5]\d:[0-5]\d/`

```plain-text
23:11
7:00:30
09:38
```

???

- 7:00:30
- 23:11
- 09:38
- All of the above
