---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

aspects:
  - introduction

links:
  - '[HTML <a> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a){documentation}'

---
# Mailto:
---
## Content

Although links typically navigate to other pages, using the anchor `mailto:` attribute in the path will open the user's default web program on their computer. The link will also auto load the assigned email address making it easy for user's to quickly send an email.

Creating a link to open the user's default email program:
```html
<a
  href="mailto:heya@enki.com">
  Email me here
</a>
```
[View CodePen](https://codepen.io/enkidevs/pen/ejvqXx)


The subject area of the email can also be auto loaded.

**Note:** When adding the subject, rather than using spaces between words it is important to write `%20` in place of each space.

Example:
```html
<a
  href="mailto:heya@enki.com?
        subject=Sign%20me%20up!">
Email me to sign up.
</a>
```

[View CodePen](https://codepen.io/enkidevs/pen/OwpKGj)

---
## Practice

Create a text link that opens the user's default email program.

`<??? ???="??? ???">Email Me<???>`

* a
* href
* mailto:
* heya@enkipro.com
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

```html
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
