---
author: pawel
levels:
  - basic
  - beginner
type: normal
category: best-practice
tags:
  - Google
  - Microsoft
  - jQuery
  - server-side
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Use hosted scripts to increase performance


---

## Content

Many users already have downloaded scripts from the web. 

For example, they may have downloaded jQuery from Google when visiting another site that uses that particular script host. 

```html
<script src="https:/.../jquery.min.js">
</script>
```

The same script will be loaded from a user's cache if they visit another website referencing the same location. This leads to faster loading time.


---

## Revision

What happens when you visit a webpage that uses a script **with the same host** as a page previously visited?

???

- script is loaded from cache
- script is downloaded
- script is not loaded
