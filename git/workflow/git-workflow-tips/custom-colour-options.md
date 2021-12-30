---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Colors In Git Official
    Documentation](http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration#_colors_in_git){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Custom colour options


---

## Content

You can change the default colour options for the console text.

For example, to set the colour of the results for `git status` command to **magenta foreground**, **white background** and **bold text**:

```bash
git config --global color.status.changed
 "magenta white bold"
```

If you run `git status` git will display any changed files in the new colour setting.

The other `color.*` options are `ui`, `branch.*`, `diff.*` and `interactive.*`.


---

## Practice

Change the colour for `diff.meta` to be *blue* foreground, *black* background and *bold* font:

```bash
git ??? ??? ??? ???
```

- `config`
- `--global`
- `color.diff.meta`
- `”blue black bold”`
- `”blue, black, bold”`


---

## Revision

A customisable `color.` option is ??? .

- interactive.
- git.
- sources.
