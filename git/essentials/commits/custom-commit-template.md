---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Git Customizing Official
    Documentation](http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration){website}
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

# Custom commit template


---

## Content

You can add a commit message template to git, to help you write clear messages.

First, you create a template file `template.txt`:

```plain-text
subject line (50 chars)

issue no: X

commit body (72 chars)
```

Then you set this template to be the default commit editor message using `commit.template`:

```bash
git config --global commit.template path/to/template.txt
```

When you run `git commit` the template will appear in the editor.


---

## Practice

You can add a commit message template using:

```bash
git ??? --global ???.???  path/to/template.txt
```

- `config`
- `commit`
- `template`
- `-co`
- `-m`


---

## Revision

You can add a commit message template using:

```bash
git ??? --global ???.???  path/to/template.txt
```

- `config`
- `commit`
- `template`
- `-co`
- `-m`
