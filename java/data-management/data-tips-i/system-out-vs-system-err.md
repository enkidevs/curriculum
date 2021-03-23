---
author: pawel
type: normal
category: tip
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/3163399/difference-between-system-out-println-and-system-err-println){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `System.out` vs `System.err`


---

## Content

`System.out` leads the output to the standard output stream (usually console screen). It should be used for regular program output.

`System.err` leads the output to the standard **error** stream. It should be used for error messages only.

You may redirect both streams to different destinations (e.g files) to create an error log file where regular program output is unnecessary.


---

## Revision

Which stream does `System.err` print to?

???

- Error stream
- Input stream
- Output stream
- Music stream
