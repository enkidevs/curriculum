---
author: Stefan-Stojanovic
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [HTML <a>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Mailto:


---

## Content

Although links typically navigate to other pages, using the anchor `mailto:` attribute in the path will open the user's default email program on their computer. 

The link will also auto-load the assigned email address making it easy for user's to quickly send an email.

To create a link to open the user's default email program:

```html
<a
  href="mailto:heya@enki.com">
  Email me here
</a>
```

[View CodePen](https://codepen.io/enkidevs/pen/ejvqXx)

`mailto:` can have four *header fields*: `cc`, `bcc`, `subject`, and `body`.

Header fields are added by writing their name followed by an equal sign and the field's value.

> 💡 When adding the subject and/or the body, rather than using spaces between words it is recommended to write `%20` in place of each space. This is because URLs have strict syntactic rules[1].

The order of the attributes does not matter. However, when using more than one attribute it is important to separate each of them with a `&` (and) sign.

The main e-mail is always separated with a `?` from the other field values.

To add `cc` to your e-mail:

```html
<a
  href="mailto:heya@enki.com?cc=person@enki.com">
  Email me here
</a>
```

To add `bcc` to your e-mail:

```html
<a
  href="mailto:heya@enki.com?bcc=person@enki.com">
  Email me here
</a>
```

To add `subject` to your e-mail:

```html
<a
  href="mailto:heya@enki.com?subject=This%20is%20the%20subject">
  Email me here
</a>
```

To add `body` to your e-mail:

```html
<a
  href="mailto:heya@enki.com?body=This%20is%20the%20body%20of%20the%20email">
  Email me here
</a>
```

Here is an example with all attributes added on the same link:

```html
<a
  href="mailto:heya@enki.com?cc=person@enki.com&bcc=person@enki.com&subject=This%20is%20the%20subject&body=This%20is%20the%20body%20of%20the%20email">
  Email me here
</a>
```

[View CodePen](https://codepen.io/enkidevs/pen/OwpKGj)


---

## Practice

Create a text link that opens the user's default email program.

```html
<??? ???="??????">
  Email Me
<???>
```

- a
- href
- mailto:
- `heya@enkipro.com`
- /a
- src
- mail:
- send:
- img


---

## Revision

What code is used to create a link that when clicked opens the user’s default email program with an auto-loaded email address?

???

- `<a href="mailto:me@enkipro.com">Email Me</a>`
- `<a href="mail:me@enkipro.com">Email Me</a>`
- `<a href="address:me@enkipro.com">Email Me</a>`
- `<a href="email:me@enkipro.com">Email Me</a>`


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

- mailto:
- [me@enkipro.com](mailto:me@enkipro.com)
- ?
- subject
- Email%20Subject
- src
- mail:
- address:
- email:


---

## Footnotes

[1:URL Syntactic Rules]

The reason for replacing spaces with `%20` is because URLs have strict syntactic rules. 

URLs can't have spaces, so the ASCII character for space should be inserted instead. 

The `%` character, followed by two hexadecimal digits, is used to replace unsafe characters from a URL. 

The ASCII character for space is `20`, making `%20` the replacement character for space.

This applies to the `body` part of the e-mail as well. Most of the time, spaces will work, but to make sure they work 100% of the time, replace spaces with `%20`.
