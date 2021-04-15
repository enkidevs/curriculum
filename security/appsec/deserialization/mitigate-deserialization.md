---
author: lizTheDeveloper
type: normal
category: how-to
links:
  - '[JSON Web Tokens](https://jwt.io/){website}'
  - >-
    [A conference talk about how to survive the deserialization
    apocalypse](https://speakerdeck.com/pwntester/surviving-the-java-deserialization-apocalypse){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Mitigate Deserialization


---

## Content

The chief best practice is creating input validation and having robust exception handling around errors on input. Using established libraries for common tasks, especially the receiving of values from users and validating whether or not they confirm to an expected pattern that is as restrictive as possible. Check over any code that receives network requests (at the business logic layer) and ensure that there is data validation when it reaches your server.

In order to prevent data tampering, **do not pass entire user state from point to point**. Instead, use a token.

If you must send state to a user and be sure it has not been tampered with, you can use an **Integrity Check**.

When user input cannot be deserialized, or it throws an exception, make sure that exception is **logged**, so you can correlate that exception with drains on server resources.


---

## Practice

How can we pass serialized data to the client while making sure it has not been tampered with?

???

- Integrity Check
- Encryption
- Serialization


---

## Revision

What is the most effective defense against serialization attack vectors?

???

- Input Validation
- Deserialization
- Encryption
- Nonces
