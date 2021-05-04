---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[IMPORTFEED](https://support.google.com/docs/answer/3093337){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# =IMPORTFEED() Options & Example


---

## Content

The `query`, `headers` and `num_items` are optional.

The `query` specifies what type of data to import. The default is `items`.

Possible values for `query` are:

- `feed` returns a single row of feed information.
- `feed <type>` returns a specific attribute of the feed. The values for <type> are `title`, `description`, `author` or `url`
- `items` returns a full table of items unless `num_items` is specified.
- `items <type>` returns a specific attribute of the specified item type. Possible values for `type` are `title`, `summary`, `url` or `created`.

The `headers` is used to include the headers of the feed as an extra row at the top of the returned value. It is `FALSE` by default.

The `num_items` specifies how many items to return. If it is not specified, by default, all items will be returned.

Here is the same example, but we only import the `author` in `feed <type>`, include the `headers` and have `2` items.

![importfeed-2](https://img.enkipro.com/0491c40a44fcaee4c93132db04dfa033.png)


---

## Practice

In which order do you write the `headers`, `num_items`, `url` and `query` in the `=IMPORTFEED()` function?

```plain-text
=IMPORTFEED(???, ???, ???, ???)
```

- url
- query
- headers
- num_items


---

## Revision

Which of these is not optional when using the `=IMPORTFEED()` function?

???

- url 
- query 
- headers 
- num_items
