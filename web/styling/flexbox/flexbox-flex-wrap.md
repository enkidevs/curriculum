---
author: Billiexu

levels:

  - advanced

type: normal

category: must-know

tags:

  - flexbox


links:

  - '[css-tricks.com](https://css-tricks.com/almanac/properties/f/flex-wrap/){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-wrap){documentation}'


---

# Flexbox `flex-wrap`

---
## Content

`flex-wrap` defines whether the flex items are forced in a **single line** or can be **flowed into multiple lines**. If set to multiple lines, it also defines the cross-axis which determines the direction new lines are stacked in.


`nowrap` (default): single-line which may cause the container to overflow.

![nowrapmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%20fill=%22#596193%22%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v200H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M14%2018h80v112H14V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%2246%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E1%3C/text%3E%3Cpath%20d=%22M114%2018h80v112h-80V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22146%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E2%3C/text%3E%3Cpath%20d=%22M214%2018h80v112h-80V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22246%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E3%3C/text%3E%3Cpath%20d=%22M314%2018h80v112h-80V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22346%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E4%3C/text%3E%3Cpath%20d=%22M414%2018h80v112h-80V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22446%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E5%3C/text%3E%3Cpath%20d=%22M514%2018h80v112h-80V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22546%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E6%3C/text%3E%3Cpath%20d=%22M614%2018h80v112h-80V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22646%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E7%3C/text%3E%3Cpath%20d=%22M714%2018h80v112h-80V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22746%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E8%3C/text%3E%3C/g%3E%3C/svg%3E)


`wrap`: multi-lines, direction is defined by flex-direction.

```
.flex-container {
  flex-wrap: wrap;
}

```

![wrapmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M14%2018h112v112H14V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%2262%22%20y=%2251%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E1%3C/text%3E%3Cpath%20d=%22M146%2018h112v112H146V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22194%22%20y=%2251%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E2%3C/text%3E%3Cpath%20d=%22M278%2018h112v112H278V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22326%22%20y=%2251%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E3%3C/text%3E%3Cpath%20d=%22M410%2018h112v112H410V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22458%22%20y=%2251%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E4%3C/text%3E%3Cpath%20d=%22M542%2018h112v112H542V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22590%22%20y=%2251%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E5%3C/text%3E%3Cpath%20d=%22M674%2018h112v112H674V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22722%22%20y=%2251%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E6%3C/text%3E%3Cpath%20d=%22M14%20150h112v112H14V150%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%2262%22%20y=%22183%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E7%3C/text%3E%3Cpath%20d=%22M146%20150h112v112H146V150%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22194%22%20y=%22183%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E8%3C/text%3E%3C/g%3E%3C/svg%3E)


`wrap-reverse`: multi-lines, opposite to direction defined by flex-direction.


```
.flex-container {
  flex-wrap: wrap-reverse;
}

```

![wrap-reversemin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M14%2018h112v112H14V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%2262%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E7%3C/text%3E%3Cpath%20d=%22M146%2018h112v112H146V18%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22194%22%20y=%2251%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E8%3C/text%3E%3Cpath%20d=%22M14%20150h112v112H14V150%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%2262%22%20y=%22183%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E1%3C/text%3E%3Cpath%20d=%22M146%20150h112v112H146V150%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22194%22%20y=%22183%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E2%3C/text%3E%3Cpath%20d=%22M278%20150h112v112H278V150%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22326%22%20y=%22183%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E3%3C/text%3E%3Cpath%20d=%22M410%20150h112v112H410V150%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22458%22%20y=%22183%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E4%3C/text%3E%3Cpath%20d=%22M542%20150h112v112H542V150%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22590%22%20y=%22183%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E5%3C/text%3E%3Cpath%20d=%22M674%20150h112v112H674V150%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20fill=%22#596193%22%20stroke=%22none%22%20x=%22722%22%20y=%22183%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2229%22%20font-weight=%22400%22%3E6%3C/text%3E%3C/g%3E%3C/svg%3E)

---
## Practice

Which of the following values will potentially overflow the container?
```
.flex-container{
 flex-wrap: ???;
}
```

* `nowrap`
* `wrap`
* `wrap-reverse`
* `unset`

---
## Revision

Which of the following Flexbox definitions is the definition for *wrap*?

???


* Multi-lines where the direction is defined by flex-direction.
* Multi-lines, opposite to the direction defined by flex-direction.
* Single-line which could cause the container to overflow.

