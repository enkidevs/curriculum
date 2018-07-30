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

Although links typically navigate to other pages, using the anchor `mailto:` attribute in the path will open the user's default web program on their computer. The link will also auto load the assigned email address making it easy for user's to quickly send an email.

![link-mailto](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22100%22%20height%3D%2258%22%3E%3Cg%20fill%3D%22%23FFF%22%3E%3Cpath%20d%3D%22M99.99398%2010.52613c0-1.67597-1.35523-3.04226-3.02366-3.04226H45.27895l7.27607%204.93685c.4698.32183.8553.7226%201.19862%201.15375h38.87995L62.61381%2035.49576%2047.9352%2024.84481l-5.81242%203.94704L60.86105%2042.2604c1.02395.7469%202.48157.73476%203.50552%200l29.5861-21.26547v30.90841H31.27495V36.15158l-1.21669.83191c-.95167.63153-2.01176.9473-3.10196.9473-.59028%200-1.16248-.12753-1.72265-.3097v17.33058C25.23364%2056.6337%2026.58887%2058%2028.25731%2058h68.71903C98.64477%2058%20100%2056.63371%20100%2054.95167V15.08042c0-.15788-.0241-.30362-.04819-.43721.03614-.16396.04819-.32791.04819-.4858v-3.63128h-.00602z%22%2F%3E%3Cpath%20d%3D%22M25.87327%2031.65554c0%20.40108.22222.77179.57656.96017.36035.1884.78077.16409%201.11109-.06077l22.4319-15.27779c.2943-.20054.47447-.54086.47447-.91156%200-.36463-.18018-.69887-.47446-.90549L27.56693.1884c-.33033-.21878-.75675-.24916-1.1111-.06077-.35434.19447-.57655.56517-.57655.97233v8.83608c-3.53145-.0243-6.4503-.1823-8.88268-.48009C5.3332%208.05821%202.21016.97234%202.08404.66848%201.90987.25524%201.51348%200%201.08706%200%201.015%200%20.94292%200%20.87686.01823.36036.12762%200%20.57733%200%201.09388%200%2018.9848%2020.9905%2022.79515%2025.86726%2023.43932l.00601%208.21622z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Creating a link to open the user's default email program:
```
<a 
  href="mailto:heya@enki.com">
  Email me here
</a>
```
<!--[View CodePen](https://codepen.io/enkidevs/pen/ejvqXx)-->


The subject area of the email can also be auto loaded.

**Note:** When adding the subject, rather than using spaces between words it is important to write `%20` in place of each space.

Example:
```
<a 
  href="mailto:heya@enki.com?
        subject=Sign%20me%20up!"> 
Email me to sign up.
</a>
```

<!--[View CodePen](https://codepen.io/enkidevs/pen/OwpKGj)-->

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


