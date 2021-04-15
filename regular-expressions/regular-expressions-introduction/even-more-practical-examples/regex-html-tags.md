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

# HTML Tags


---

## Content

In its most basic format, a regex pattern to match an HTML tag, such as an `<a>` tag could look something like this:

`/<a[^>]*>.*?<\/a>/`

The negated set, `[^>]`, is the key component of this regex as it allows the pattern to match on all characters apart from the closing tag `>`.

This means that our regex pattern will work for the following valid HTML tags that contain attributes:

```plain-text
<a href="https://enki.com">Enki</a> ✅
<a href="/apply/request-a-demo" target="_blank" class="button">Request a Demo</a> ✅
```

And it would not work for the following invalid tags:

    <a>some content<a> ❌
    <>some content</> ❌

Say we have a long HTML document and we want to extract all of the `<h>` and `<p>` tags...

This would be very tedious if we did them all individually.

It would be far quicker to write a regex pattern to pick up our desired tags!

We could write something like:

`/<(p|h[1-6])[^>]*>.*?<\/(p|h[1-6])>/`

This would match on all `<p>` tags or any `<h1>`, `<h2>`, `<h3>`, `<h4>`, `<h5>` or `<h6>` tags 🎉.


---

## Practice

How could we write a regex pattern to match all `<div>` tags?

???

- `/<div[^>]*>.*?<\/div>/`
- `/<div.*>.*?<\/div>/`
- `/<div[^>]*><\/div>/`
- `/<div[^>]*>.*?</div>/`


---

## Revision

How could we write a regex pattern to match all `<img>` tags?

???

- `/<img[^>]*>.*?<\/img>/`
- `/<img.*>.*?<\/img>/`
- `/<img[^>]*><\/img>/`
- `/<img[^>]*>.*?</img>/`
