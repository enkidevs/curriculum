---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - '[ISO Language Codes](https://www.labnol.org/code/19899-google-translate-languages){documentation}'
  - '[DETECTLANGUAGE](https://support.google.com/docs/answer/3093278){documentation}'

---

# DETECTLANGUAGE

---
## Content

The `=DETECTLANGUAGE()` function is used to detect a language.

The syntax is:

```plain-text
=DETECTLANGUAGE(text_or_range)
```

You can either input the text directly into the function or select a range.

> 💡 If the text contains more than one language, it will translate according to the first detected language.

The function returns a two-letter ISO language code of the language it detected.

A two-letter code would be `ko` for Korean, `hi` for Hindi, `sv` for Swedish etc.

For a full list of ISO language codes check the *Learn more* section.

![detect](https://img.enkipro.com/ecba3137525bf2d435692c918ec9badd.png)
