# Use ESLint
author: mihaiberq

levels:
  - beginner
  - basic
  - medium

type: normal

category: how to

tags:
  - introduction

---
## Content

While you can get away with not being too consistent in small, personal projects, the lack of attention to details may be the cause for a lot of problems. Details like *semicolons*, *spacing* and even *anti-patterns* are hard to keep track of when trying to meet a deadline.

Because of that, `linters` should be one of the key components of every project. What easily escapes the human eye, linters take care of by default. They might be annoying at first, but they save time in the long run. For example, *git* conflicts are mostly caused by things a linter could regulate the use of.  

The standard is `ESLint`. It can be installed through *npm* and integrated with different IDE and text editors. While the default package has recommendations for vanilla JavaScript, there are plugins specific to different frameworks like Node (`eslint-plugin-node`) or jQuery.

A lot of customization can go on with `ESLint`. You can abide by open-source, community supported set of rules or you can write your own. Usually, the best idea is to customize open-source ones. One of the most known is `eslint-config-airbnb`.

Any configuration goes into the `.eslintrc` file that appears after running `eslint --init` in the main folder. For example:
```json
{
    "rules": {
        "semi": ["error", "always"],
        "quotes": ["error", "double"]
    }
}
```
You can also have different rules for different types of files: `.css`, `.js` and `.html`.

---
## Practice


---
## Revision
