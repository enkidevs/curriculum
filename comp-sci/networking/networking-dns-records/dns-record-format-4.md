---
author: amgando
type: normal
category: pattern
links:
  - >-
    [Stack Overflow Answer -- Binary vs Text
    protocol](https://stackoverflow.com/questions/2645009/binary-protocols-v-text-protocols){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# DNS Record Format


---

## Content

When humans communicate about DNS, we use language that is understandable to humans. When computers communicate using DNS, however, they have no obligation to ensure that a human could readily understand their communications. This means that although we say things like `A`, `AAAA`, and `NS` record, the data in the actual message does not contain ASCII or Unicode formatted data for `AAAA`.

Although all data used by computers is ultimately stored as binary network engineers delineate between "binary" protocols and "text based" protocols. A text based protocol uses a binary format like ASCII or Unicode for the entirety of the data transmitted. HTTP 1.x is an example of a text based protocol.

Binary protocols only use ASCII or Unicode when the data being sent is textual. DNS is a binary protocol, and the only values in any DNS message that is encoded as ASCII are the portions of the domain names. Values  such as `A` and `NS` are actually specified as numeric values in the Request For Comments (RFCs) that define DNS. An `A` record is denoted by the numeric value 1; an NS record is the numeric value 2.


---

## Practice

Which of the following accurately describes what it means when we say DNS is a "binary protocol".

???

- DNS messages only use a textual encoding format (such as ASCII) for information that is inherently textual (such as "google.com")
- DNS messages never contain any information in textual encoding such as ASCII.
- DNS messages are meant to be inscrutable to humans, for privacy reasons, and so cannot be translated into text.


---

## Revision

When does DNS use the ASCII encoding format?

???

- Only for storing portions of domain names.
- For portions of domain names and record types such as NS and A
- For portions of domain names, record types such as NS and A, and for class field in response records.
