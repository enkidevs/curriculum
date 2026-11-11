---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The query object moves to searchParams.
    requiredConcepts:
      - Throws; parameters are on `searchParams`.
    acceptedAnswers:
      - "`query` is undefined, so reading from it throws; use `searchParams`."
      - "Error: there's no `query` object; use `searchParams.get`."
      - It fails since the new API exposes `searchParams`, not `query`.
    hints:
      - What properties does a `URL` object have?
      - Where do params live?
    tooVagueExamples:
      - It breaks.
      - Something differs.
    incorrectExamples:
      - It works the same.
      - It needs a base to populate `searchParams`.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "The summary dropped a constraint that breaks the migration: relative input needs a base."
    requiredConcepts:
      - A relative input such as a request path needs a base URL.
    acceptedAnswers:
      - "`new URL` needs a base for a path like `req.url`."
      - Relative URLs throw unless you pass a base.
      - "`req.url` is only a path, so a base is required."
    hints:
      - What does `req.url` look like on a server?
      - What does `new URL` need to parse a path?
    tooVagueExamples:
      - Some details.
      - The version.
    incorrectExamples:
      - Query parameters moved to `searchParams`.
      - "`new URL` doesn't exist in Node 20."
---

# Documentation Constraints

---
## Content

Before a migration, an assistant's summary of the docs saves you a long read. But summaries tend to drop the conditions that make code break.

Say you're moving the redirect service off Node's old `url.parse()`. Here's an assistant's summary of the Node.js v20.11.1 URL documentation[2]:

```plain-text
Use new URL(input, base) instead of url.parse(). You get the same
parts: protocol, host, pathname, and query.
```

It dropped two conditions:

- **A base URL:** a relative input like `req.url` needs a `base`, or `new URL()` throws.
- **Query parameters:** the WHATWG `URL`[1] puts them on `searchParams`, and it has no `query` object.

The current code uses `url.parse(req.url, true)`, which gives an object-valued `query`.

Here's what the replacement gives:

```plain-text
$ node -e 'const u=new URL("/r/AB12?utm_source=news", "https://go.example.com"); console.log(u.query, u.searchParams.get("utm_source"))'
undefined news
```

`u.query` is `undefined`, so code that reads `parsed.query.utm_source` throws after a direct swap.

> ‼️ A common mistake is trusting a short summary for a migration. Ask it to keep the version, prerequisites, error conditions, and API differences, since those are what break code.

---
## Practice

After swapping `url.parse(req.url, true)` for `new URL(req.url, base)`, code still reads `parsed.query.utm_source`. What happens and why?

???

- It throws, because WHATWG URLs put parameters on `searchParams`.

---
## Revision

A Node docs summary says "Use `new URL(input)` instead of `url.parse()`." You write `new URL(req.url)` and every request throws. What did it leave out?

???

- That a relative input like `req.url` needs a base URL.

---
## Footnotes

[1: WHATWG URL]
The `URL` class that browsers and Node.js share, defined by the WHATWG standards group. Node's older `url.parse()` is a separate, Node-only API.

[2: Node.js URL Documentation]
Official Node.js v20.11.1 documentation for the WHATWG and legacy URL APIs.
https://nodejs.org/download/release/v20.11.1/docs/api/url.html
