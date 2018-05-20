---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

links:
  - '[MDN docs for anchor](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a){website}'

---
# Mailto:
---
## Content

The HTML anchor `mailto:EMAILHERE` attribute is used to create a hyperlink, which when clicked opens the users default email program with the email address auto loaded to allow them to send a message.

Creating a link to open the user's default email program:
```
<a 
  href="mailto:me@enkipro.com">
  Email me here
</a>
```

Result:
```
Email me here
```

Next to just opening the user's default email program, you can also populate the subject area.

**Note: When adding the subject, it is important to remember that instead of space you need to write `%20`.**

Example:
```
<a 
  href="mailto:me@enkipro.com?
        subject=Email%20Subject"> 
Email me
</a>
```

Result:
```
Email me
```

---
## Practice

Create a text link that opens the user's default email program.

`<??? ???="??? ???">Email Me<???>`

* a
* href
* mailto:
* me@enkipro.com
* /a
* src
* mail:
* send:
* img

---
## Revision

What code is used to create a link that when clicked opens the user’s default email program with an auto-loaded email address?

???

* `<a href="mailto:me@enkipro.com">Email Me</a>`
* `<a href="mail:me@enkipro.com">Email Me</a>`
* `<a href="address:me@enkipro.com">Email Me</a>`
* `<a href="email:me@enkipro.com">Email Me</a>`

---
## Quiz

### How much do you know about HTML links opening email programs?

Create a link that when clicked opens the user’s default email program with an auto-loaded email address and email subject?

```
<a 
  href="??? ??? ??? ???=???">
Email Me
</a>
```

* mailto:
* me@enkipro.com
* ?
* subject
* Email%20Subject
* src
* mail:
* address:
* email:


