---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - '[ISO Language Codes](https://www.labnol.org/code/19899-google-translate-languages){documentation}'
  - '[GOOGLETRANSLATE](https://support.google.com/docs/answer/3093331){documentation}'

---

# GOOGLETRANSLATE

---
## Content

The `=GOOGLETRANSLATE()` function is used to translate text from one language to another. 

The syntax is:

```plain-text
=GOOGLETRANSLATE(
  text, 
  source_language, 
  target_language
)
```

The `text` is what we want to translate. It has to be enclosed in quotation marks or reference a cell.

The source and target language are optional and `auto` by default.

> 💡 The `auto` option for the `source_language` automatically detects a language. Whereas the `auto` option for `target_language` selects your system's language by default.

The `source_language` is a two-letter code used to define the source language. `en` for English, `es` for Spanish, etc. 

The `target_language` is a two-letter code used to define the target language. `pl` for Polish, `da` for Danish, etc.

> 💡 The two-letter codes are ISO language codes. For a full list of ISO language codes check the *Learn more* section.

![translate](https://img.enkipro.com/e826ece2fc17fbd38cb038e9abc35f12.png)
