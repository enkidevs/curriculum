---
author: rosielowther

levels:

  - basic

type: normal

category: feature


links:

  - '[git-scm.com](http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration){website}'


---
## Content
# Custom colour options

You can change the default colour options for the console text.

For example, to set the colour of changed files to **magenta foreground**, **white background** and **bold text**:
```
$ git config --global color.status.changed
 "magenta white bold"
```
If you run `git status` git will display any changed files in the new colour setting.

The other `color.*` options are `ui`, `branch.*`, `diff.*` and `interactive.*`.

---
## Practice

Change the color for `diff.meta` to be *blue*, *black* and *bold*
```
$ git ??? ??? 
      ??? ???
```

* `config`
* `--global`
* `color.diff.meta`
* `”blue black bold”`
* `”blue, black, bold”`

---
## Revision

A customisable `color.` option is ??? .

* interactive.*
* git.*
* sources.*

