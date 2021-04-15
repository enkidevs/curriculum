---
author: emmab
tags:
  - introduction
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

# Instagram Username


---

## Content

Rules for an Instagram username:

- An Instagram username is limited to 30 characters and must contain only **letters**, **numbers**, **periods**, and **underscores**.
- It cannot start or end with a period.
- You can't include symbols or other punctuation marks.

Let's have a crack at writing our regex pattern!

Knowing that it must start with a word character, we can use `/w` which includes any alphabetical character, number or underscore.

Next, we need to include any word character and we also need to include periods. We can define a range inside `[ ]` such as `[\w.]`.

> 💡 When using ranges we do not need to escape periods. The same applies to all other special characters!

Lastly, we want our usernames to end on a word character.

Putting all of this together we have:

`/^\w[\w.]{0,28}\w$/`

📷


---

## Practice

Using `/^\w[\w.]{0,28}\w$/` as our regex pattern. Is the following username valid?

```plain-text
enki_devs.
```

???

- No
- Yes


---

## Revision

Using `/^\w[\w.]{0,28}\w$/` as our regex pattern. Is the following username valid?

```plain-text
enki_devs_
```

???

- Yes
- No
