---
author: nemanjaenki
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

# Word Relationships Are Numeric

---

## Content

Since word vectors are just lists of numbers, you can do math with them.

And since each number represents some kind of meaning about a word, you can do math to explore relationships.

For example, if you take the word `"biggest"` and subtract `"big"` and add `"small"`, you get the vector for the word `"smallest"`.

![word-vectors-smallest](https://img.enkipro.com/356c4d9d449e6300bbe634031aec7f1d.png)

This arithmetic lets LLMs handle analogies, such as:

```
Swiss is to Switzerland as Cambodian is to Cambodia
Man is to Woman as King is to Queen
```

In other words, the distance between `"King"` and `"Queen"` is the same as the distance between `"Man"` and `"Woman"` in word space.

---

## Practice

What is the result of the following operation?

```
"Paris" - "France" + "Germany" = ???
```

- Berlin
- London
- Capital
- Ireland

---

## Revision

Because dimensions of word vectors are just numbers, you can do math with them
to explore relationships.

What would be the result of the following operation?

```
"biggest" - "big" + "small" = ???
```

- smallest
- youngest
- even bigger
- small
