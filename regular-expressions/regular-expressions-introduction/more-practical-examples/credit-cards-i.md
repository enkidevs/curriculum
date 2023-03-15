---
author: emmab
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Credit Cards I


---

## Content

There are four major credit card networks: American Express (Amex), Discover, Mastercard, and Visa[1].

Let's build a regex pattern that matches **all four**!

> 💡 Some key facts before we get going: Visa, Mastercard and Discover credit cards all contain four sets of four digits. American Express credit cards contain fifteen digits in the format 4-6-5, `4242-424242-42424`.

We also want our pattern to match credit cards that have hyphens or spaces in between each set of digits, so it should match the three following formats:

    4242-4242-4242-4242 ✅
    4242 4242 4242 4242 ✅
    4242424242424242 ✅

In order to match all the different types of credit cards, we'll need to make use of the 'OR' operator: `|`.

Visa, Mastercard, and Discover cards can all be verified together using:

`/(\d{4}[-\s]?){4}/` 

There should be 4 digits, followed by an optional hyphen or space. This should be repeated 4 times.

American Express cards can be validated using:

`/\d{4}[-\s]?\d{6}[-\s]?\d{5}/`

There should be 4 digits, followed by an optional space or hyphen. This same pattern should then be repeated, once with 6 digits and once with 5 digits.

Putting this together using the 'OR' operator gives us:

`/(\d{4}[-\s]?){4}|\d{4}[-\s]?\d{6}[-\s]?\d{5}/`

Voilà! 🎉


---

## Practice

Imagine that we don't want to include hyphens or spaces in our pattern for Visa cards. What can we remove from the following regex pattern?

`/(\d{4}[-\s]?){4}/` 

???

- `[-\s]?`
- `[-\s]`
- `?`
- `\d`


---

## Revision

Imagine that we don't want to include hyphens or spaces in our pattern for American Express credit cards. What can we remove from the following regex pattern?

`/\d{4}[-\s]?\d{6}[-\s]?\d{5}/`

???

- `[-\s]?`
- `[-\s]`
- `?`
- `\d`


---

## Footnotes

[1: Credit Card Networks]

A credit card network sets the interchange or “swipe” fees that merchants are charged to accept a credit card transaction. 

Credit card networks do not control fees a cardholder pays such as the interest rates, annual fees, late fees, foreign transaction fees and over-limit fees.
 
