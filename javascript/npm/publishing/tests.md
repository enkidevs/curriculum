---
author: mihaiberq
type: normal
category: how-to
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Tests


---

## Content

The easiest way to ensure that changes or additions to your module don't break any existing features is to thoroughly **test** them.

Some people even think that writing tests and building your module around them is the safest way of providing the best possible code[1].

In your `package.json` you can specify which **script** should be run when `test`ing.

```javascript
{
  "scripts": {
    "test": "jest test/mytest.js"
  }
}
```

This will provide a shortcut for you, invokable by running:

```bash
npm test
# instead of
npm run test
```

One of the most straightforward ways to test your code is *linting*. A linter checks for errors in your code syntax and helps ensure you follow coding best-practices. Some examples include missing parenthesis, semi-colons, unnecessary keywords or the use of quotes.

A JavaScript linter is JSLint:

```bash
npm install jslint
```

To lint your entire project, add this to the *test* event:

```javascript
{
  "scripts": {
    "test": `jslint '**/*.js'
        && node test/mytest.js`
  }
}
```

The options are limitless when it comes to what to test and which tools to use. However, for any package maintainer, as well as package users, tests provides assurance that the module provides the functionality it is supposed.


---

## Practice

If you have a `test` script defined in your `package.json`, what will be the easiest way to invoke it?

```bash
???
```

- npm test
- npm run test
- jest all
- test
- test .


---

## Revision

Complete the following `package.json` file with code that would make `npm run test` lint *index.js* file:

```javascript
{
  // ...
  "???": {
    "???": "jslint ???"
  }
}
```

- scripts
- test
- index.js
- script
- tests


---

## Footnotes

[1:TDD]
This approach of writing code is called "Test-Driven Development".
