---
author: catalin
type: normal
category: how-to
tags:
  - workout
  - deep
  - introduction
links:
  - '[docs.npmjs.com](https://docs.npmjs.com/cli/deprecate){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deprecate npm packages


---

## Content

Using the simple `npm deprecate` command you can deprecate versions of published packages. This only works if you are the **owner** of the specified package.

```bash
npm deprecate jQuery "This is deprecated"
```

Keep in mind that a message must be also specified after the package name/version.

Version ranges can also be specified:

```bash
npm deprecate jQuery@"<0.1.2" "Bug fixed"
```

This will deprecate every version that is smaller than `0.1.2` of the specified package (`jQuery` in this case).

Packages can also be un-deprecated by specifying an empty string as the message:

```bash
npm deprecate jQuery@"<0.1.2" ""
```

Deprecation makes sure that users installing such packages are informed though warning/s about it being deprecated.


---

## Practice

How do you un-deprecate `enki` package?

```bash
npm ??? enki ???
```

- deprecate
- ""
- un-deprecate
- "un-deprecated Enki
- "any message"


---

## Revision

How do you un-deprecate `enki` package?

```bash
npm ??? enki ???
```

- deprecate
- ""
- un-deprecate
- "un-deprecated Enki
- "any message"
