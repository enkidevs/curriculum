---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how to



---

# IMPORTFEED

---
## Content

The `=IMPORTFEED()` function is used to import a RSS or ATOM feed.

[importfeed](https://img.enkipro.com/c48fee70f924f32110df2d85436e290f.gif)

Syntax:
```plain-text
IMPORTFEED(url, [query], [headers], [num_items])
```

The `url` is the URL of the RSS/ATOM feed you want to import the data from. The `http://`/`https://` must be included in the URL.

You can either add the URL directly into the function and enclose it in quotation marks or add the URL in an empty cell and refference that cell instead.

```plain-text
IMPORTFEED("http://news.google.com/?output=atom")

// URL placed in cell A3
IMPORTFEED(A3)
```

The `query`, `headers` and `num_items` are optional.

The `query` is used to specify what type of data to import from the `url`. The default is `items`.

Possible values for `query` are:
  - `feed` returns a single row of feed information.
  - `feed <type>` returns a specific attribute of the feed. The values for <type> are `title`, `description`, `author` or `url`
  - `items` returns a full table of items unless `num_items` is specified. Then it returns the specified number of items.
  - `items <type>` returns a specific attribute of the specified item type. Possible values for `type` are `title`, `summary`, `url` or `created`.

The `headers` is used to include the headers of the feed as an extra row at the tom of the returned value. Is `FALSE` by default.

The `num_items` is used to specify how many items to return. If `num_items` is not specified, by default, all items will be returned.

Here is an example of the same gif above, where we only import the `author` in `feed <type>`, include the `headers` and only have `2` items.

![importfeed-2](https://img.enkipro.com/0491c40a44fcaee4c93132db04dfa033.png)

---
## Practice

Which of these is not optional when using the `=IMPORTFEED()` function?

???

- url 
- query 
- headers 
- num_items