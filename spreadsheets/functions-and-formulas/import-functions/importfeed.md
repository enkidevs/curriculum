---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[IMPORTFEED](https://support.google.com/docs/answer/3093337){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# =IMPORTFEED()


---

## Content

The `=IMPORTFEED()` function is used to import an RSS or ATOM feed.

![importfeed](https://img.enkipro.com/c48fee70f924f32110df2d85436e290f.gif)

The syntax is:

```plain-text
=IMPORTFEED(url, query, headers, num_items)
```

The `url` is the URL of the RSS/ATOM feed you want to import the data from. The protocol (e.g. `https://`) must be included in the URL.

You can either add the URL directly into the function and enclose it in quotation marks or add the URL in an empty cell and reference that cell instead.

```plain-text
=IMPORTFEED("http://news.google.com/?output=atom")

// URL placed in cell A3
=IMPORTFEED(A3)
```


---

## Practice

The `=IMPORTFEED()` function is used to import an ???

- RSS or ATOM feed.
- XML document.
- SQL feed.
