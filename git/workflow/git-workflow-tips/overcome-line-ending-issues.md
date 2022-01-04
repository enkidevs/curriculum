---
author: rosielowther
type: normal
category: how-to
links:
  - >-
    [Overcome Line-Ending
    Issues](http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration#_formatting_and_whitespace){website}
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

# Overcome line-ending issues


---

## Content

Windows uses a carriage-return character and a linefeed character (CRLF) for new lines in files, whereas Mac and Linux systems use a linefeed character (LF).

To make sure the files in the team's shared repository have LF endings and to prevent problems when you checkout to Windows, you can set `core.autocrlf`.

On Windows:

```bash
git config --global core.autocrlf true
```

On Mac and Linux:

```bash
git config --global core.autocrlf input
```


---

## Practice

Enable `core.autocrlf` on Windows:

```bash
git ??? ??? ??? ???
```

- `config`
- `--global`
- `core.autocrlf`
- `true`


---

## Revision

To enable `core.autocrlf`, its value should be set to:
```bash
Windows    ???  
Linux/Mac  ???  
```

- true
- input
- start
- `-true`
