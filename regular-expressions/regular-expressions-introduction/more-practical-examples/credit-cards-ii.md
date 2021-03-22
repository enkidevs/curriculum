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

# Credit Cards II


---

## Content

What if we only want to accept certain types of credit cards... 🤔

We'll need to build new regex patterns to match each type of card we want to accept.

> 💡 More essential credit card facts: Visa cards start with a 4, Mastercard cards start with a 5, American Express cards start with a 3, and Discover cards start with a 6.

This time, let's assume that all hyphens and spaces have been stripped out.

Visa credit card pattern:

`/^4\d{15}$/` - It must start with a 4, followed by 15 other digits.

Mastercard credit card pattern:

`/^5\d{15}$/` - It must start with a 5, followed by 15 other digits.

American Express credit card pattern:

`/^3\d{14}$/` - It must start with a 3, followed by 14 other digits.

Discover credit card pattern:

`/^6\d{15}$/` - It must start with a 6, followed by 15 other digits.

Now you're fully equipped to validate whichever credit card providers you want 👍.


---

## Practice

We want to accept both Visa and Mastercard. Which regex would allow us to successfully do so?

???

- `/^[45]\d{15}$/`
- `/^45\d{15}$/`
- `/^(45)\d{15}$/`
- `/^{45}\d{15}$/`


---

## Revision

We want to accept Visa, Mastercard and American Express. Which regex would allow us to successfully do so?

Remember:

- Visa credit card patterns must start with a 4, followed by 15 other digits.
- Mastercard credit card patterns must start with a 5, followed by 15 other digits.
- American Express credit card patterns must start with a 3, followed by 14 other digits.

???

- `/(^[45]\d{15}$)|(^3\d{14}$)/`
- `/^[345]\d{15}$/`
- `/(^[45]\d{15}$)|(^3\d{15}$)/`
- `/(^[45]\d{15}$)|(^3\d{16}$)/`
 
