---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# API Reference Verification

---
## Content

An assistant can turn a function into an API reference entry in seconds. The draft may also state behavior the code never promised, and other developers build against whatever the reference says.

Say you ask for an entry for this function:

```javascript
export function resolveItemLink(href, feedUrl) {
  const link = new URL(href, feedUrl);
  link.hash = "";
  return link.toString();
}
```

The draft says:

```plain-text
resolveItemLink(href, feedUrl?)
href: string, the link taken from the feed item
feedUrl: string, optional base for a relative href
Returns: absolute URL string, fragment removed
Throws: TypeError when href is relative and no feedUrl is given
```

The signature only shows the parameter names and their order. It doesn't show whether `feedUrl` is optional, what the function returns, or when it throws.

**Check those claims against the Node.js documentation[1] for your version and against the tests.**

Here are the tests:

```plain-text
ok 1 - a relative href resolves against feedUrl
ok 2 - the fragment is gone from the returned string
ok 3 - a relative href with no feedUrl throws TypeError
```

- **The Node 20.11.1 docs** say a relative URL needs a base, and an invalid one throws `TypeError`.
- **The tests** confirm what this wrapper returns for the project's inputs.

> ‼️ A common mistake is trusting a claim because it's written in reference format. Every line about returns or errors needs a doc or a test behind it.

---
## Practice

A drafted reference says `getPage` throws when `page` is past the end.

```javascript
export function getPage(items, page) {
  const size = 20;
  return items.slice((page - 1) * size, page * size);
}
```

With 30 items, `getPage(items, 99)` actually ???.

- returns `[]`
- throws a RangeError
- returns page 2
- returns null

---
## Revision

A reference entry lists parameters, return behavior, and errors. The JavaScript signature alone confirms ???.

- only the parameter names
- parameters and return value
- parameters and errors
- none of them

---
## Footnotes

[1: Node.js URL Documentation]
Official Node.js v20.11.1 documentation for `new URL()` and the legacy URL API.
https://nodejs.org/download/release/v20.11.1/docs/api/url.html
