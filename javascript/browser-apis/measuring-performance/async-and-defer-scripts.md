---
author: pawel
type: normal
category: feature
tags:
  - async-scripts
  - defer-scripts
links:
  - >-
    [www.growingwiththeweb.com](http://www.growingwiththeweb.com/2014/02/async-vs-defer-attributes.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Async and defer scripts


---

## Content

Modern browsers support the `async` and `defer` attributes on scripts. These attributes tell the browser it is safe to continue parsing while the scripts are being downloaded.

```plain-text
<script type="text/javascript"
src="path/to/script1.js" async></script>
```

An `async` script is executed as soon as it is downloaded, without blocking the browser in the meantime.

```plain-text
<script type="text/javascript"
src="path/to/script1.js" defer></script>
```

Scripts with the `defer` attribute are executed in order. Unlike `async` scripts, they will only execute when entire document has been loaded.


---

## Practice

Scripts with the ??? attribute are executed in order. Unlike ??? scripts, they will only execute when the entire document has been loaded.

- defer
- async


---

## Revision

What type of script is executed as soon as it is downloaded, without blocking the browser in the meantime?

???

- `async`
- `defer`
- `all`
- `none`
