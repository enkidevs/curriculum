---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Email Address Checker I


---

## Content

How many times have you seen the message *“Invalid email format”* in your sign-up form?

That's because the `input` element on an HTML form already performs the validation without you needing to write any of your own regex.

That being said, if for some reason you don't have access to this field, regex can help you validate email addresses in a single line of code, instead of having to write several `if` statements[1].

Let's start off with a basic expression to check that the overall structure of the text is in the form `x@y.z`.

```plain-text
/.+@.+\..+/
```

`a@b.c` ✅
`xxxx@yyyy.zzz` ✅
`a @ b . c` ✅

As you can see, this very basic pattern validates even invalid email addresses 😢.

Let's try a stricter example:

```plain-text
/[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,6}/i
```

`/[a-z0-9._%+-]+/` ensures that only email address-friendly characters are allowed.

`/@/` is literally just the '**@**' symbol.

`/[a-z0-9.-]+\.[a-z]{2,6}/` ensures that the domain also contains email address-friendly characters, and that there are between 2-6 characters in the domain extension.

We can also add an `i` modifier to the end of our regex to make sure that the pattern is case insensitive 🙌.


---

## Practice

Using the regex below, we could match the email address `we_love_code@enki.com`.

```plain-text
/[a-z]+@[a-z]+\.[a-z]{2,6}/i
```

???

- False
- True


---

## Revision

Using the regex below, we could match the email address `we_love_code@enki.com`.

```plain-text
/[a-z_]+@[a-z]+\.[a-z]{2,6}/i
```

???

- True
- False


---

## Footnotes

[1:if statements]
Conditional statements (or `if` statements) are features of a programming language that perform different actions depending on whether a condition evaluates to true or false.
